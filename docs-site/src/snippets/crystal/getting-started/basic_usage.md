```crystal title="Crystal"
require "tree_sitter_language_pack"

# Check language availability
if TreeSitterLanguagePack.has_language("python")
  puts "Python is supported"
end

# Process source code — downloads parser on first use
result = TreeSitterLanguagePack.process(
  "def hello(name):\n  print(f'Hi {name}!')",
  TreeSitterLanguagePack::ProcessConfig.from_json(%({
    "language":"python",
    "include_ast":true,
    "include_structure":true
  }))
)
puts "  Lines: #{result.metrics.total_lines}"
puts "  AST: #{result.structure}" if result.structure
```
