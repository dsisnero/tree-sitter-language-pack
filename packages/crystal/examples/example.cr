# tree-sitter-language-pack Crystal — inspect and process source code
require "../src/tree_sitter_language_pack"

# --- Checking language awareness ---
# `has_language` checks the static table of 306 known languages
# (parsers are downloaded on demand at runtime).
puts "=== Language awareness ==="
%w(python rust javascript html css).each do |lang|
  available = TreeSitterLanguagePack.has_language(lang)
  puts "  #{lang}: #{available ? "recognized" : "unknown"}"
end

# --- Processing source code ---
# The `process` function handles parser download + parsing automatically.
# Pass source text and a ProcessConfig specifying the language.
puts "\n=== Processing Python code ==="
code = "def hello(name):\n    print(f'Hello, {name}!')\n\nhello('world')\n"
result = TreeSitterLanguagePack.process(
  code,
  TreeSitterLanguagePack::ProcessConfig.from_json(%({
    "language":"python",
    "include_ast":true,
    "include_structure":true
  }))
)
puts "  Language: #{result.language}"
puts "  Lines: #{result.metrics.total_lines}"
puts "  AST nodes: #{result.structure.try(&.size) || 0}"

puts "\n=== Processing Rust code ==="
rust_code = "fn main() {\n    println!(\"Hello, world!\");\n}\n"
result = TreeSitterLanguagePack.process(
  rust_code,
  TreeSitterLanguagePack::ProcessConfig.from_json(%({
    "language":"rust",
    "include_ast":true,
    "include_structure":true
  }))
)
puts "  Language: #{result.language}"
puts "  Lines: #{result.metrics.total_lines}"
puts "  AST nodes: #{result.structure.try(&.size) || 0}"

# --- Using the LanguageRegistry ---
# For advanced use (multiple files, reuse across calls), create a
# LanguageRegistry and query it directly.
puts "\n=== LanguageRegistry ==="
registry = TreeSitterLanguagePack::LanguageRegistry.new
puts "  Registry created"
puts "  Python available? #{registry.available_languages.includes?("python") || "no (no static parsers compiled in)"}"

# --- Downloading parsers ---
# The download functions now work correctly thanks to the Crystal backend's
# scalar-error fix (`Result<usize, Error>` returns the count directly, with
# error signals via last_error_code/last_error_context).
puts "\n=== Downloading parsers ==="
begin
  downloaded = TreeSitterLanguagePack.download(["python", "rust"])
  puts "  Downloaded/verified #{downloaded} new parser(s)"
rescue ex
  puts "  Download error: #{ex.message}"
end

cached = TreeSitterLanguagePack.downloaded_languages
puts "  Cached: #{cached.join(", ")}" unless cached.empty?

puts "\nCrystal tree-sitter-language-pack bindings working!"
