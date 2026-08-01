// swift-tools-version: 6.0
import PackageDescription
import Foundation

// NOTE: Run `cargo build -p tree-sitter-language-pack-swift` and then rerun `alef generate`
// before `swift build`. Alef materializes the swift-bridge Swift/C outputs into
// Sources/RustBridge and Sources/RustBridgeC when the Cargo build output exists.
// See README.md for the full workflow.

// Absolute path to the Cargo target dir, resolved from this manifest's own location so the
// runtime rpath is independent of the process working directory (`swift test` may chdir into
// fixture dirs). `#filePath` is a compile-time literal, so this performs no filesystem access.
let rustTargetDir = (#filePath as NSString).deletingLastPathComponent.appending("/../../target")

// Both `tree-sitter-language-pack-swift` and `ts-pack-core-ffi` build with
// `crate-type = ["cdylib", "staticlib"]`, so `target/{release,debug}` always
// contains both a `.a` and a `.dylib` for each. `ts-pack-core-ffi`'s build
// script stamps its cdylib's install_name as `@rpath/libts_pack_core_ffi.dylib`
// so the FFI dylib is relocatable — but Cargo's `rustc-link-arg-cdylib`
// directive propagates transitively to every cdylib in the graph, so the
// *swift-bridge* cdylib gets stamped with that same install_name too. The two
// `.dylib`s end up with identical `LC_ID_DYLIB` identities, which corrupts
// two-level-namespace symbol binding: `.linkedLibrary(...)` lets the linker
// pick either `.dylib` (its default preference over `.a`), and dyld then
// resolves `__swift_bridge__$*` symbols against whichever physical file owns
// that shared install name at runtime — which may not be the one that
// actually defines them. Link the archives by explicit path instead of
// `-l<name>` so the linker can never substitute the colliding dylibs.
func staticLibraryPath(_ name: String) -> String {
  let release = "\(rustTargetDir)/release/lib\(name).a"
  let debug = "\(rustTargetDir)/debug/lib\(name).a"
  return FileManager.default.fileExists(atPath: release) ? release : debug
}

let package = Package(
  name: "TreeSitterLanguagePack",
  platforms: [
    .macOS(.v13),
    .iOS(.v16),
  ],
  products: [
    .library(name: "TreeSitterLanguagePack", targets: ["TreeSitterLanguagePack"])
  ],
  dependencies: [
    .package(url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.25.0"),
  ],
  targets: [
    // RustBridgeC: pure C/headers target. Swift files in RustBridge import this
    // to access C types (RustStr, etc.) produced by swift-bridge.
    // publicHeadersPath: "." exposes RustBridgeC.h to dependents.
    .target(
      name: "RustBridgeC",
      path: "Sources/RustBridgeC",
      publicHeadersPath: "."
    ),
    // RustBridge: Swift wrapper around the Rust static library.
    // Depends on RustBridgeC so the generated Swift files can use the C types.
    // linkerSettings wire the Rust staticlibs (libtree_sitter_language_pack_swift.a and libts_pack_core_ffi.a)
    // produced by `cargo build -p tree-sitter-language-pack-swift` and the FFI crate so
    // `swift build` / `swift test` can resolve the `__swift_bridge__$*` and FFI C symbols.
    // Both target/release and target/debug are searched so either cargo profile works.
    // The FFI library is needed because the generated Swift service API code (App.swift)
    // calls FFI functions directly via @_silgen_name declarations.
    .target(
      name: "RustBridge",
      dependencies: ["RustBridgeC"],
      path: "Sources/RustBridge",
      linkerSettings: [
        .unsafeFlags([
          staticLibraryPath("tree_sitter_language_pack_swift"),
          staticLibraryPath("ts_pack_core_ffi"),
          // Runtime search paths: any transitively-linked dylib (e.g. a bundled
          // onnxruntime dylib) still needs an LC_RPATH to dlopen it.
          // swiftc rejects `-Wl,-rpath,<p>`; the driver-native spelling is `-Xlinker -rpath -Xlinker <p>`.
          "-Xlinker", "-rpath", "-Xlinker", "\(rustTargetDir)/release",
          "-Xlinker", "-rpath", "-Xlinker", "\(rustTargetDir)/debug",
        ]),
        // The Rust staticlib records native-library dependencies (e.g. `lzma-sys`
        // via the archive/`xz2` path emits `cargo:rustc-link-lib`) that cargo would
        // resolve when it drives the final link, but a `staticlib` `.a` does not
        // embed them and SwiftPM does not read cargo's link metadata, so undefined
        // symbols like `_lzma_stream_decoder` surface at the swift link step. Link
        // the system library here. `liblzma` ships in the macOS SDK and on Linux.
        .linkedLibrary("lzma"),
        // Same staticlib-doesn't-embed-native-deps reasoning as lzma above: the
        // bzip2 crates (archive/zip/unhwp paths) emit `-lbz2`, surfacing undefined
        // `_BZ2_bzDecompress*` at the swift link step. `libbz2` ships in the macOS
        // SDK and on Linux.
        .linkedLibrary("bz2"),
        // The Rust staticlib pulls in C++ dependencies (onnxruntime, tesseract,
        // ClipperLib) that reference the C++ runtime/ABI (`__cxa_throw`,
        // `__gxx_personality_v0`, `__cxa_guard_acquire`, ...). A `staticlib` `.a`
        // does not carry the transitive `-lc++`/`-lstdc++` system-lib dependency,
        // so SwiftPM must link the C++ standard library explicitly or the final
        // link fails with undefined symbols from those crates.
        .linkedLibrary("c++", .when(platforms: [.macOS, .iOS])),
        .linkedLibrary("stdc++", .when(platforms: [.linux])),
        .linkedFramework("Security", .when(platforms: [.macOS, .iOS])),
        .linkedFramework("CoreFoundation", .when(platforms: [.macOS, .iOS])),
        .linkedFramework("SystemConfiguration", .when(platforms: [.macOS])),
      ]
    ),
    .target(
      name: "TreeSitterLanguagePack", dependencies: ["RustBridge", .product(name: "SwiftTreeSitter", package: "swift-tree-sitter")],
      path: "Sources/TreeSitterLanguagePack",
      exclude: ["LICENSE"]),
    .testTarget(
      name: "TreeSitterLanguagePackTests", dependencies: ["TreeSitterLanguagePack"],
      path: "Tests/TreeSitterLanguagePackTests"),
  ]
)
