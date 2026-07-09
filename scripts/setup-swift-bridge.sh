#!/bin/bash

set -e

PROFILE="${1:-release}"
BUILD_DIR="target/${PROFILE}/build"

if stat -f '%m %N' "$BUILD_DIR" >/dev/null 2>&1; then
  STAT_FMT=(-f '%m %N')
else
  STAT_FMT=(-c '%Y %n')
fi
OUT=$(find "$BUILD_DIR" -maxdepth 2 -type d -name out -path '*tree-sitter-language-pack-swift-*' \
  -exec stat "${STAT_FMT[@]}" {} + 2>/dev/null | sort -rn | head -1 | cut -d' ' -f2-)
if [ -z "$OUT" ]; then
  echo "ERROR: Could not find swift-bridge build output in ${BUILD_DIR}/"
  exit 1
fi

echo "Using swift-bridge output from: $OUT"

mkdir -p packages/swift/Sources/RustBridgeC
mkdir -p packages/swift/Sources/RustBridge

cat "$OUT/SwiftBridgeCore.h" "$OUT/tree-sitter-language-pack-swift/tree-sitter-language-pack-swift.h" \
  >packages/swift/Sources/RustBridgeC/RustBridgeC.h

{
  printf 'import RustBridgeC\n'
  cat "$OUT/SwiftBridgeCore.swift"
} >packages/swift/Sources/RustBridge/SwiftBridgeCore.swift
{
  printf 'import RustBridgeC\n'
  cat "$OUT/tree-sitter-language-pack-swift/tree-sitter-language-pack-swift.swift"
} >packages/swift/Sources/RustBridge/tree-sitter-language-pack-swift.swift

echo "Swift-bridge files setup complete"
