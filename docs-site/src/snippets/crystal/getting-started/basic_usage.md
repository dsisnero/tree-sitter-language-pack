```crystal title="Crystal"
require "tree_sitter_language_pack"

# Download the native FFI library first (see README):
#   ./scripts/download_ffi.sh
# Build with:
#   crystal build --link-flags="-L.lib -Wl,-rpath,$(pwd)/.lib" src/app.cr

lang = TreeSitterLanguagePack.detect_language_from_extension("rb")
puts lang # => "ruby"

result = TreeSitterLanguagePack.process("def foo\nend\n", TreeSitterLanguagePack::ProcessConfig.from_json(%({"language":"ruby"})))
puts result.metrics.try(&.node_count)
```
