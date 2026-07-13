require "json"

# Low-level binding to the generated C FFI layer (ts_pack.h).
#
# Every non-scalar value crosses the C ABI as a NUL-terminated JSON string
# (`LibC::Char*`); scalars pass by value. Strings returned by the library are
# owned by Rust and must be released with `ts_pack_free_string`.
#
# Link against the FFI shared library. The library must be installed to a
# standard path, or you can pass --link-flags at build time:
#   crystal build ... --link-flags="-L/path/to/lib -Wl,-rpath,/path/to/lib"
@[Link(ldflags: "-lts_pack_core_ffi")]
lib LibTsPack
  fun free_string = ts_pack_free_string(ptr : LibC::Char*) : Void
  fun last_error_code = ts_pack_last_error_code() : Int32
  fun last_error_context = ts_pack_last_error_context() : LibC::Char*

  struct ByteRange
    _data : Void*
  end
  struct PackConfig
    _data : Void*
  end
  struct Point
    _data : Void*
  end
  struct ProcessConfig
    _data : Void*
  end
  struct ProcessResult
    _data : Void*
  end
  fun byte_range_from_json = ts_pack_byte_range_from_json(json : LibC::Char*) : ByteRange*
  fun byte_range_to_json = ts_pack_byte_range_to_json(ptr : ByteRange*) : LibC::Char*
  fun byte_range_free = ts_pack_byte_range_free(ptr : ByteRange*)
  fun pack_config_from_json = ts_pack_pack_config_from_json(json : LibC::Char*) : PackConfig*
  fun pack_config_to_json = ts_pack_pack_config_to_json(ptr : PackConfig*) : LibC::Char*
  fun pack_config_free = ts_pack_pack_config_free(ptr : PackConfig*)
  fun point_from_json = ts_pack_point_from_json(json : LibC::Char*) : Point*
  fun point_to_json = ts_pack_point_to_json(ptr : Point*) : LibC::Char*
  fun point_free = ts_pack_point_free(ptr : Point*)
  fun process_config_from_json = ts_pack_process_config_from_json(json : LibC::Char*) : ProcessConfig*
  fun process_config_to_json = ts_pack_process_config_to_json(ptr : ProcessConfig*) : LibC::Char*
  fun process_config_free = ts_pack_process_config_free(ptr : ProcessConfig*)
  fun process_result_from_json = ts_pack_process_result_from_json(json : LibC::Char*) : ProcessResult*
  fun process_result_to_json = ts_pack_process_result_to_json(ptr : ProcessResult*) : LibC::Char*
  fun process_result_free = ts_pack_process_result_free(ptr : ProcessResult*)

  # Detect language name from a file extension (without leading dot).
  fun detect_language_from_extension = ts_pack_detect_language_from_extension(ext : LibC::Char*) : LibC::Char*
  # Detect language name from a file path.
  fun detect_language_from_path = ts_pack_detect_language_from_path(path : LibC::Char*) : LibC::Char*
  # Detect language name from file content using the shebang line (`#!`).
  fun detect_language_from_content = ts_pack_detect_language_from_content(content : LibC::Char*) : LibC::Char*
  # Get the highlights query for a language, if bundled.
  fun get_highlights_query = ts_pack_get_highlights_query(language : LibC::Char*) : LibC::Char*
  # Get the injections query for a language, if bundled.
  fun get_injections_query = ts_pack_get_injections_query(language : LibC::Char*) : LibC::Char*
  # Get the locals query for a language, if bundled.
  fun get_locals_query = ts_pack_get_locals_query(language : LibC::Char*) : LibC::Char*
  # Get the tags query for a language, if bundled.
  fun get_tags_query = ts_pack_get_tags_query(language : LibC::Char*) : LibC::Char*
  # Get the indents query for a language, if bundled.
  fun get_indents_query = ts_pack_get_indents_query(language : LibC::Char*) : LibC::Char*
  # Get the folds query for a language, if bundled.
  fun get_folds_query = ts_pack_get_folds_query(language : LibC::Char*) : LibC::Char*
  # Get a tree-sitter [`Language`] by name using the global registry.
  fun get_language = ts_pack_get_language(name : LibC::Char*) : Void*
  # Get a [`Parser`] pre-configured for the given language.
  fun get_parser = ts_pack_get_parser(name : LibC::Char*) : Void*
  # Detect language name from a file path or extension.
  fun detect_language = ts_pack_detect_language(path : LibC::Char*) : LibC::Char*
  # List all available language names (sorted, deduplicated, includes aliases).
  fun available_languages = ts_pack_available_languages() : LibC::Char*
  # Check if a language is available by name or alias.
  fun has_language = ts_pack_has_language(name : LibC::Char*) : Bool
  # Return the number of available languages.
  fun language_count = ts_pack_language_count() : LibC::SizeT
  # Process source code and extract file intelligence using the global registry.
  fun process = ts_pack_process(source : LibC::Char*, config : ProcessConfig*) : ProcessResult*
  # Initialize the language pack with the given configuration.
  fun init = ts_pack_init(config : PackConfig*) : Void
  # Apply download configuration without downloading anything.
  fun configure = ts_pack_configure(config : PackConfig*) : Void
  # Download specific languages to the local cache.
  fun download = ts_pack_download(names : LibC::Char*) : LibC::SizeT
  # Prefetch grammars: download any not already loadable from disk, then load every
  fun prefetch = ts_pack_prefetch(languages : LibC::Char*) : Void
  # Download all available languages from the remote manifest.
  fun download_all = ts_pack_download_all() : LibC::SizeT
  # Download every language in a named group (e.g. `"web"`, `"data"`).
  fun download_group = ts_pack_download_group(name : LibC::Char*) : LibC::SizeT
  # Return all language names available in the remote manifest (306).
  fun manifest_languages = ts_pack_manifest_languages() : LibC::Char*
  # Return languages that are already downloaded and cached locally.
  fun downloaded_languages = ts_pack_downloaded_languages() : LibC::Char*
  # Delete all cached parser shared libraries.
  fun clean_cache = ts_pack_clean_cache() : Void
  # Return the effective cache directory path.
  fun cache_dir = ts_pack_cache_dir() : LibC::Char*
  fun download_manager_new = ts_pack_download_manager_new(version : LibC::Char*) : Void*
  fun download_manager_installed_languages = ts_pack_download_manager_installed_languages(handle : Void*) : LibC::Char*
  fun download_manager_download_all_best_effort = ts_pack_download_manager_download_all_best_effort(handle : Void*) : LibC::SizeT
  fun download_manager_clean_cache = ts_pack_download_manager_clean_cache(handle : Void*) : Void
  fun download_manager_free = ts_pack_download_manager_free(handle : Void*) : Void
  fun language_free = ts_pack_language_free(handle : Void*) : Void
  fun language_registry_new = ts_pack_language_registry_new() : Void*
  fun language_registry_get_language = ts_pack_language_registry_get_language(handle : Void*, name : LibC::Char*) : Void*
  fun language_registry_available_languages = ts_pack_language_registry_available_languages(handle : Void*) : LibC::Char*
  fun language_registry_has_parser = ts_pack_language_registry_has_parser(handle : Void*, name : LibC::Char*) : Bool
  fun language_registry_has_language = ts_pack_language_registry_has_language(handle : Void*, name : LibC::Char*) : Bool
  fun language_registry_language_count = ts_pack_language_registry_language_count(handle : Void*) : LibC::SizeT
  fun language_registry_process = ts_pack_language_registry_process(handle : Void*, source : LibC::Char*, config : ProcessConfig*) : ProcessResult*
  fun language_registry_default = ts_pack_language_registry_default() : Void*
  fun language_registry_free = ts_pack_language_registry_free(handle : Void*) : Void
  fun node_clone = ts_pack_node_clone(handle : Void*) : Void*
  fun node_kind = ts_pack_node_kind(handle : Void*) : LibC::Char*
  fun node_kind_id = ts_pack_node_kind_id(handle : Void*) : UInt16
  fun node_start_byte = ts_pack_node_start_byte(handle : Void*) : LibC::SizeT
  fun node_end_byte = ts_pack_node_end_byte(handle : Void*) : LibC::SizeT
  fun node_byte_range = ts_pack_node_byte_range(handle : Void*) : ByteRange*
  fun node_start_position = ts_pack_node_start_position(handle : Void*) : Point*
  fun node_end_position = ts_pack_node_end_position(handle : Void*) : Point*
  fun node_is_named = ts_pack_node_is_named(handle : Void*) : Bool
  fun node_is_error = ts_pack_node_is_error(handle : Void*) : Bool
  fun node_is_missing = ts_pack_node_is_missing(handle : Void*) : Bool
  fun node_is_extra = ts_pack_node_is_extra(handle : Void*) : Bool
  fun node_has_error = ts_pack_node_has_error(handle : Void*) : Bool
  fun node_parent = ts_pack_node_parent(handle : Void*) : LibC::Char*
  fun node_child = ts_pack_node_child(handle : Void*, index : UInt32) : LibC::Char*
  fun node_child_count = ts_pack_node_child_count(handle : Void*) : LibC::SizeT
  fun node_named_child = ts_pack_node_named_child(handle : Void*, index : UInt32) : LibC::Char*
  fun node_named_child_count = ts_pack_node_named_child_count(handle : Void*) : LibC::SizeT
  fun node_child_by_field_name = ts_pack_node_child_by_field_name(handle : Void*, name : LibC::Char*) : LibC::Char*
  fun node_to_sexp = ts_pack_node_to_sexp(handle : Void*) : LibC::Char*
  fun node_walk = ts_pack_node_walk(handle : Void*) : Void*
  fun node_free = ts_pack_node_free(handle : Void*) : Void
  fun parser_new = ts_pack_parser_new() : Void*
  fun parser_set_language = ts_pack_parser_set_language(handle : Void*, name : LibC::Char*) : Void
  fun parser_parse = ts_pack_parser_parse(handle : Void*, source : LibC::Char*) : LibC::Char*
  fun parser_parse_bytes = ts_pack_parser_parse_bytes(handle : Void*, source : LibC::Char*) : LibC::Char*
  fun parser_reset = ts_pack_parser_reset(handle : Void*) : Void
  fun parser_default = ts_pack_parser_default() : Void*
  fun parser_free = ts_pack_parser_free(handle : Void*) : Void
  fun tree_root_node = ts_pack_tree_root_node(handle : Void*) : Void*
  fun tree_walk = ts_pack_tree_walk(handle : Void*) : Void*
  fun tree_free = ts_pack_tree_free(handle : Void*) : Void
  fun tree_cursor_node = ts_pack_tree_cursor_node(handle : Void*) : Void*
  fun tree_cursor_goto_first_child = ts_pack_tree_cursor_goto_first_child(handle : Void*) : Bool
  fun tree_cursor_goto_parent = ts_pack_tree_cursor_goto_parent(handle : Void*) : Bool
  fun tree_cursor_goto_next_sibling = ts_pack_tree_cursor_goto_next_sibling(handle : Void*) : Bool
  fun tree_cursor_field_name = ts_pack_tree_cursor_field_name(handle : Void*) : LibC::Char*
  fun tree_cursor_free = ts_pack_tree_cursor_free(handle : Void*) : Void
end

# tree-sitter-language-pack — Crystal bindings generated by alef.
#
# Ruby-style API over the Rust core: snake_case methods, PascalCase types,
# Rust-like generic containers (`Array(T)`, `Hash(K, V)`), and fiber/`Channel`
# based concurrency for async and streaming methods.
module TsPackCore
  VERSION = "1.12.5"

  # An XML-style attribute attached to an [`Element`](DataNodeKind::Element) node.
  #
  # Populated only for `DataNodeKind::Element`; always empty for `KeyValue` and
  # `Sequence` nodes.
  class DataAttribute
    include JSON::Serializable
    # Attribute name (e.g. `"class"`, `"href"`).
    getter name : String = ""
    # Attribute value as a raw string (quotes stripped).
    getter value : String = ""
    # Source span covering the entire `name="value"` attribute token.
    getter span : Span = Span.from_json("{}")
  end

  # A node in the hierarchical data tree produced by data-format extraction.
  #
  # When [`ProcessConfig::data_extraction`](crate::ProcessConfig::data_extraction) is
  # `true`, [`ProcessResult::data`] is populated with a root `DataNode` whose
  # [`children`](DataNode::children) mirror the structure of the parsed file.
  #
  # The `kind` field determines which other fields are meaningful:
  #
  # | `kind`     | `key`                    | `value`       | `attributes` | `children` |
  # |------------|--------------------------|---------------|--------------|------------|
  # | `KeyValue` | key / mapping key / index | leaf value   | empty        | nested map |
  # | `Element`  | XML tag name             | text content  | XML attrs    | child elements |
  # | `Sequence` | positional index (`"0"`) | leaf value   | empty        | sub-items  |
  class DataNode
    include JSON::Serializable
    # Whether this node is a key/value pair, XML element, or sequence item.
    getter kind : DataNodeKind = DataNodeKind::KeyValue
    # Key, attribute name, tag name, or positional index (`"0"`, `"1"`, …).
    # `None` at the document root.
    getter key : String?
    # Leaf scalar value, if any. `None` for containers (objects, arrays, XML elements
    # with child elements).
    getter value : String?
    # Attributes on element-shape nodes (XML `STag` attributes). Empty for all other kinds.
    getter attributes : Array(DataAttribute) = [] of DataAttribute
    # Children for nested containers and XML element bodies.
    getter children : Array(DataNode) = [] of DataNode
    # Source span covering this node in the original source file.
    getter span : Span = Span.from_json("{}")
  end

  # Byte and line/column range in source code.
  #
  # Represents both byte offsets (for slicing) and human-readable line/column
  # positions (for display and diagnostics).
  class Span
    include JSON::Serializable
    # Inclusive start byte offset in the source.
    getter start_byte : UInt64 = 0
    # Exclusive end byte offset in the source.
    getter end_byte : UInt64 = 0
    # Zero-indexed line number of the span's start.
    getter start_line : UInt64 = 0
    # Zero-indexed column number of the span's start.
    getter start_column : UInt64 = 0
    # Zero-indexed line number of the span's end.
    getter end_line : UInt64 = 0
    # Zero-indexed column number of the span's end.
    getter end_column : UInt64 = 0
  end

  # Complete analysis result from processing a source file.
  #
  # Contains metrics, structural analysis, imports/exports, comments,
  # docstrings, symbols, diagnostics, and optionally chunked code segments.
  # Fields are populated based on the `ProcessConfig` flags.
  #
  # # Fields
  #
  # - `language` - The language used for parsing
  # - `metrics` - Always computed: line counts, byte sizes, error counts
  # - `structure` - Functions, classes, structs (when `config.structure = true`)
  # - `imports` - Import statements (when `config.imports = true`)
  # - `exports` - Export statements (when `config.exports = true`)
  # - `comments` - Comments (when `config.comments = true`)
  # - `docstrings` - Docstrings (when `config.docstrings = true`)
  # - `symbols` - Symbol definitions (when `config.symbols = true`)
  # - `diagnostics` - Parse errors (when `config.diagnostics = true`)
  # - `chunks` - Chunked code segments (when `config.chunk_max_size` is set)
  class ProcessResult
    include JSON::Serializable
    # The language name used to parse the source file.
    getter language : String = ""
    # File-level metrics (line counts, byte size, error count).
    getter metrics : FileMetrics = FileMetrics.from_json("{}")
    # Top-level structural items (functions, classes, etc.).
    getter structure : Array(StructureItem) = [] of StructureItem
    # Import statements extracted from the source.
    getter imports : Array(ImportInfo) = [] of ImportInfo
    # Export statements extracted from the source.
    getter exports : Array(ExportInfo) = [] of ExportInfo
    # Comments extracted from the source.
    getter comments : Array(CommentInfo) = [] of CommentInfo
    # Docstrings extracted from the source.
    getter docstrings : Array(DocstringInfo) = [] of DocstringInfo
    # Symbol definitions (variables, types, functions) extracted from the source.
    getter symbols : Array(SymbolInfo) = [] of SymbolInfo
    # Parse diagnostics (syntax errors, missing nodes) from tree-sitter.
    getter diagnostics : Array(Diagnostic) = [] of Diagnostic
    # Syntax-aware code chunks produced when chunking is enabled.
    getter chunks : Array(CodeChunk) = [] of CodeChunk
    # Hierarchical data tree extracted when `config.data_extraction` is `true`.
    #
    # Populated for supported data-format languages (JSON, YAML, TOML, properties,
    # HCL, INI, XML, CSV, and more). `None` when `data_extraction` is `false` (the
    # default) or when the language is not a recognised data format.
    #
    # See [`DataNode`] for the shape of the returned tree.
    getter data : DataNode?
  end

  # Aggregate metrics for a source file.
  class FileMetrics
    include JSON::Serializable
    # Total number of lines (including blank and comment lines).
    getter total_lines : UInt64 = 0
    # Number of lines containing non-blank, non-comment source code.
    getter code_lines : UInt64 = 0
    # Number of lines that are entirely comments.
    getter comment_lines : UInt64 = 0
    # Number of blank (whitespace-only) lines.
    getter blank_lines : UInt64 = 0
    # Total byte length of the source file.
    getter total_bytes : UInt64 = 0
    # Total number of nodes in the syntax tree.
    getter node_count : UInt64 = 0
    # Number of error nodes in the syntax tree (parse errors).
    getter error_count : UInt64 = 0
    # Maximum nesting depth reached in the syntax tree.
    getter max_depth : UInt64 = 0
  end

  # A structural item (function, class, struct, etc.) in source code.
  class StructureItem
    include JSON::Serializable
    # The kind of structural item.
    getter kind : StructureKind = StructureKind.from_json("{}")
    # The declared name of the item, if present.
    getter name : String?
    # Visibility modifier (e.g., `"pub"`, `"public"`, `"private"`).
    getter visibility : String?
    # Source span covering the entire item declaration.
    getter span : Span = Span.from_json("{}")
    # Nested structural items (e.g., methods within a class).
    getter children : Array(StructureItem) = [] of StructureItem
    # Decorator or attribute names applied to the item.
    getter decorators : Array(String) = [] of String
    # Documentation comment attached to the item, if any.
    getter doc_comment : String?
    # Full signature text of the item (e.g., function parameters and return type).
    getter signature : String?
    # Source span covering only the body of the item, if distinct from the declaration.
    getter body_span : Span?
  end

  # A comment extracted from source code.
  class CommentInfo
    include JSON::Serializable
    # The raw text content of the comment.
    getter text : String = ""
    # The kind of comment (line, block, or doc).
    getter kind : CommentKind = CommentKind::Line
    # Source span covering the comment.
    getter span : Span = Span.from_json("{}")
    # Name of the syntax node this comment is directly associated with.
    getter associated_node : String?
  end

  # A docstring extracted from source code.
  class DocstringInfo
    include JSON::Serializable
    # The raw text of the docstring.
    getter text : String = ""
    # The docstring format (Python, JSDoc, Rustdoc, etc.).
    getter format : DocstringFormat = DocstringFormat.from_json("{}")
    # Source span covering the docstring.
    getter span : Span = Span.from_json("{}")
    # Name of the item this docstring documents.
    getter associated_item : String?
    # Parsed sections of the docstring (Args, Returns, Raises, etc.).
    getter parsed_sections : Array(DocSection) = [] of DocSection
  end

  # A section within a docstring (e.g., Args, Returns, Raises).
  class DocSection
    include JSON::Serializable
    # Section kind (e.g., `"args"`, `"returns"`, `"raises"`).
    getter kind : String = ""
    # Parameter or return value name, if applicable.
    getter name : String?
    # Description text for this section.
    getter description : String = ""
  end

  # An import statement extracted from source code.
  class ImportInfo
    include JSON::Serializable
    # The module or path being imported from.
    getter source : String = ""
    # Specific names imported from the source module.
    getter items : Array(String) = [] of String
    # Alias assigned to the import (e.g., `import numpy as np`).
    @[JSON::Field(key: "alias")]
    getter alias_ : String?
    # Whether this is a wildcard import (e.g., `import *` or `use foo::*`).
    getter is_wildcard : Bool = false
    # Source span covering the import statement.
    getter span : Span = Span.from_json("{}")
  end

  # An export statement extracted from source code.
  class ExportInfo
    include JSON::Serializable
    # The exported name.
    getter name : String = ""
    # The kind of export (named, default, or re-export).
    getter kind : ExportKind = ExportKind::Named
    # Source span covering the export statement.
    getter span : Span = Span.from_json("{}")
  end

  # A symbol (variable, function, type, etc.) extracted from source code.
  class SymbolInfo
    include JSON::Serializable
    # The name of the symbol.
    getter name : String = ""
    # The kind of symbol (variable, function, class, etc.).
    getter kind : SymbolKind = SymbolKind.from_json("{}")
    # Source span covering the symbol definition.
    getter span : Span = Span.from_json("{}")
    # Explicit type annotation, if present in the source.
    getter type_annotation : String?
    # Documentation comment associated with this symbol.
    getter doc : String?
  end

  # A diagnostic (syntax error, missing node, etc.) from parsing.
  class Diagnostic
    include JSON::Serializable
    # Human-readable description of the diagnostic.
    getter message : String = ""
    # Severity of the diagnostic.
    getter severity : DiagnosticSeverity = DiagnosticSeverity::Error
    # Source span where the diagnostic was detected.
    getter span : Span = Span.from_json("{}")
  end

  # A chunk of source code with rich metadata.
  class CodeChunk
    include JSON::Serializable
    # The raw source text of this chunk.
    getter content : String = ""
    # Inclusive start byte offset of this chunk in the original source.
    getter start_byte : UInt64 = 0
    # Exclusive end byte offset of this chunk in the original source.
    getter end_byte : UInt64 = 0
    # Zero-indexed start line of this chunk.
    getter start_line : UInt64 = 0
    # Zero-indexed end line of this chunk.
    getter end_line : UInt64 = 0
    # Contextual metadata about this chunk.
    getter metadata : ChunkContext = ChunkContext.from_json("{}")
  end

  # Metadata for a single chunk of source code.
  class ChunkContext
    include JSON::Serializable
    # Language name used to parse this chunk.
    getter language : String = ""
    # Zero-indexed position of this chunk within the file's chunk list.
    getter chunk_index : UInt64 = 0
    # Total number of chunks the file was split into.
    getter total_chunks : UInt64 = 0
    # Tree-sitter node kinds that appear at the top level of this chunk.
    getter node_types : Array(String) = [] of String
    # Hierarchical path of enclosing structural items (e.g., `["MyClass", "my_method"]`).
    getter context_path : Array(String) = [] of String
    # Names of symbols defined within this chunk.
    getter symbols_defined : Array(String) = [] of String
    # Comments contained within this chunk.
    getter comments : Array(CommentInfo) = [] of CommentInfo
    # Docstrings contained within this chunk.
    getter docstrings : Array(DocstringInfo) = [] of DocstringInfo
    # Whether this chunk contains any tree-sitter error nodes.
    getter has_error_nodes : Bool = false
  end

  # Configuration for the tree-sitter language pack.
  #
  # Controls cache directory and which languages to pre-download.
  # Can be loaded from a TOML file, constructed programmatically,
  # or passed as a dict/object from language bindings.
  class PackConfig
    include JSON::Serializable
    # Override default cache directory.
    #
    # Default: `~/.cache/tree-sitter-language-pack/v{version}/libs/`
    getter cache_dir : String?
    # Languages to pre-download on init.
    #
    # Each entry is a language name (e.g. `"python"`, `"rust"`).
    getter languages : Array(String)?
    # Language groups to pre-download (e.g. `"web"`, `"systems"`, `"scripting"`).
    getter groups : Array(String)?
  end

  # A source position — row + column, zero-indexed.
  class Point
    include JSON::Serializable
    # Zero-indexed row number.
    getter row : UInt64 = 0
    # Zero-indexed column number, in UTF-16 code units.
    getter column : UInt64 = 0
  end

  # A byte range — start (inclusive) to end (exclusive).
  class ByteRange
    include JSON::Serializable
    # Inclusive start byte offset.
    getter start : UInt64 = 0
    # Exclusive end byte offset.
    @[JSON::Field(key: "end")]
    getter end_ : UInt64 = 0
  end

  # A tree-sitter parser configured for one language at a time.
  class Parser
    # Wraps the owned FFI handle; do not construct directly.
    def initialize(@handle : Void*)
    end
    # Raw handle for passing back across the C ABI.
    def to_unsafe : Void*
      @handle
    end
    def finalize
      LibTsPack.parser_free(@handle) unless @handle.null?
    end
    # Construct a new parser with no language set.
    #
    # Call [`Parser::set_language`] before parsing.
    def self.new() : Parser
    __ptr = LibTsPack.parser_new()
    raise "LibTsPack.parser_new returned a null pointer" if __ptr.null?
    Parser.new(__ptr)
    end
    # Configure the parser to use the language identified by name (e.g. `"python"`).
    #
    # Resolves the language through the global registry — auto-downloading
    # if necessary, when the `download` feature is enabled.
    # Raises:
    #   Returns [`Error::LanguageNotFound`] if the language is not recognized,
    # or [`Error::ParserSetup`] if the language ABI is incompatible.
    def set_language(name : String) : Nil
    __result = LibTsPack.parser_set_language(@handle, name)
    __code = LibTsPack.last_error_code
    if __code != 0
      __ctx_ptr = LibTsPack.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    __result
    end
    # Parse a UTF-8 source string. Returns `None` if parsing was cancelled
    # or no language is set.
    def parse(source : String) : Tree?
    __ptr = LibTsPack.parser_parse(@handle, source)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    Tree.from_json(__json)
    end
    # Parse a raw byte slice. Returns `None` if parsing was cancelled or
    # no language is set.
    def parse_bytes(source : Bytes) : Tree?
    __ptr = LibTsPack.parser_parse_bytes(@handle, source.to_a.to_json)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    Tree.from_json(__json)
    end
    # Reset internal state. The next call to [`parse`](Self::parse) will
    # not be incremental.
    def reset() : Nil
    LibTsPack.parser_reset(@handle)
    nil
    end
    def self.default() : Parser
    __ptr = LibTsPack.parser_default()
    raise "LibTsPack.parser_default returned a null pointer" if __ptr.null?
    Parser.new(__ptr)
    end
  end

  # A parsed syntax tree. Cheap to clone (refcount bump).
  class Tree
    # Wraps the owned FFI handle; do not construct directly.
    def initialize(@handle : Void*)
    end
    # Raw handle for passing back across the C ABI.
    def to_unsafe : Void*
      @handle
    end
    def finalize
      LibTsPack.tree_free(@handle) unless @handle.null?
    end
    # Return the root [`Node`] of this tree.
    def root_node() : Node
    __ptr = LibTsPack.tree_root_node(@handle)
    raise "LibTsPack.tree_root_node returned a null pointer" if __ptr.null?
    Node.new(__ptr)
    end
    # Return a [`TreeCursor`] positioned at the root.
    def walk() : TreeCursor
    __ptr = LibTsPack.tree_walk(@handle)
    raise "LibTsPack.tree_walk returned a null pointer" if __ptr.null?
    TreeCursor.new(__ptr)
    end
  end

  # A single syntax node within a [`Tree`].
  #
  # Nodes hold a strong reference to their parent tree so they remain valid
  # regardless of how the tree is moved or stored at the FFI boundary.
  class Node
    # Wraps the owned FFI handle; do not construct directly.
    def initialize(@handle : Void*)
    end
    # Raw handle for passing back across the C ABI.
    def to_unsafe : Void*
      @handle
    end
    def finalize
      LibTsPack.node_free(@handle) unless @handle.null?
    end
    def clone() : Node
    __ptr = LibTsPack.node_clone(@handle)
    raise "LibTsPack.node_clone returned a null pointer" if __ptr.null?
    Node.new(__ptr)
    end
    # Return the node's kind name (e.g. `"function_definition"`).
    def kind() : String
    __ptr = LibTsPack.node_kind(@handle)
    raise "LibTsPack.node_kind returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
    end
    # Return the node's numeric kind ID.
    #
    # Tree-sitter assigns a stable `u16` ID to every node kind in a grammar
    # (e.g. `"function_definition" → 42`). Comparing `kind_id()` is cheaper
    # than comparing the string [`kind()`](Self::kind) in tight AST loops.
    def kind_id() : UInt16
    LibTsPack.node_kind_id(@handle)
    end
    # Return the inclusive start byte offset of this node.
    def start_byte() : UInt64
    LibTsPack.node_start_byte(@handle)
    end
    # Return the exclusive end byte offset of this node.
    def end_byte() : UInt64
    LibTsPack.node_end_byte(@handle)
    end
    # Return the node's byte range as a [`ByteRange`].
    #
    # Callers should slice their own source bytes — this is a zero-copy
    # text accessor.
    def byte_range() : ByteRange
    __ptr = LibTsPack.node_byte_range(@handle)
    raise "LibTsPack.node_byte_range returned a null pointer" if __ptr.null?
    __json_ptr = LibTsPack.byte_range_to_json(__ptr)
    LibTsPack.byte_range_free(__ptr)
    __json = String.new(__json_ptr)
    LibTsPack.free_string(__json_ptr)
    ByteRange.from_json(__json)
    end
    # Return the start [`Point`] (row, column).
    def start_position() : Point
    __ptr = LibTsPack.node_start_position(@handle)
    raise "LibTsPack.node_start_position returned a null pointer" if __ptr.null?
    __json_ptr = LibTsPack.point_to_json(__ptr)
    LibTsPack.point_free(__ptr)
    __json = String.new(__json_ptr)
    LibTsPack.free_string(__json_ptr)
    Point.from_json(__json)
    end
    # Return the end [`Point`] (row, column).
    def end_position() : Point
    __ptr = LibTsPack.node_end_position(@handle)
    raise "LibTsPack.node_end_position returned a null pointer" if __ptr.null?
    __json_ptr = LibTsPack.point_to_json(__ptr)
    LibTsPack.point_free(__ptr)
    __json = String.new(__json_ptr)
    LibTsPack.free_string(__json_ptr)
    Point.from_json(__json)
    end
    # True when this node is named (not punctuation/whitespace).
    def is_named() : Bool
    LibTsPack.node_is_named(@handle)
    end
    # True when this is an error node.
    def is_error() : Bool
    LibTsPack.node_is_error(@handle)
    end
    # True when this is a missing-token node.
    def is_missing() : Bool
    LibTsPack.node_is_missing(@handle)
    end
    # True when this is an "extra" node (e.g. a comment).
    def is_extra() : Bool
    LibTsPack.node_is_extra(@handle)
    end
    # True when this node or any descendant is an error.
    def has_error() : Bool
    LibTsPack.node_has_error(@handle)
    end
    # Return this node's parent, if any.
    def parent() : Node?
    __ptr = LibTsPack.node_parent(@handle)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    Node.from_json(__json)
    end
    # Return the i-th child of this node, if any.
    def child(index : UInt32) : Node?
    __ptr = LibTsPack.node_child(@handle, index)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    Node.from_json(__json)
    end
    # Total number of children (including unnamed).
    def child_count() : UInt64
    LibTsPack.node_child_count(@handle)
    end
    # Return the i-th named child of this node, if any.
    def named_child(index : UInt32) : Node?
    __ptr = LibTsPack.node_named_child(@handle, index)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    Node.from_json(__json)
    end
    # Number of named children of this node.
    def named_child_count() : UInt64
    LibTsPack.node_named_child_count(@handle)
    end
    # Look up a child by its grammar-defined field name.
    def child_by_field_name(name : String) : Node?
    __ptr = LibTsPack.node_child_by_field_name(@handle, name)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    Node.from_json(__json)
    end
    # Return the S-expression form of this node's subtree.
    def to_sexp() : String
    __ptr = LibTsPack.node_to_sexp(@handle)
    raise "LibTsPack.node_to_sexp returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
    end
    # Return a [`TreeCursor`] positioned at this node.
    def walk() : TreeCursor
    __ptr = LibTsPack.node_walk(@handle)
    raise "LibTsPack.node_walk returned a null pointer" if __ptr.null?
    TreeCursor.new(__ptr)
    end
  end

  # A cursor for traversing a [`Tree`].
  class TreeCursor
    # Wraps the owned FFI handle; do not construct directly.
    def initialize(@handle : Void*)
    end
    # Raw handle for passing back across the C ABI.
    def to_unsafe : Void*
      @handle
    end
    def finalize
      LibTsPack.tree_cursor_free(@handle) unless @handle.null?
    end
    # Return the [`Node`] at the cursor's current position.
    def node() : Node
    __ptr = LibTsPack.tree_cursor_node(@handle)
    raise "LibTsPack.tree_cursor_node returned a null pointer" if __ptr.null?
    Node.new(__ptr)
    end
    # Move the cursor to the first child of the current node.
    # Returns `true` if a child existed.
    def goto_first_child() : Bool
    LibTsPack.tree_cursor_goto_first_child(@handle)
    end
    # Move the cursor to the parent of the current node.
    # Returns `true` if a parent existed.
    def goto_parent() : Bool
    LibTsPack.tree_cursor_goto_parent(@handle)
    end
    # Move the cursor to the next sibling of the current node.
    # Returns `true` if a sibling existed.
    def goto_next_sibling() : Bool
    LibTsPack.tree_cursor_goto_next_sibling(@handle)
    end
    # Return the field name for the current node, if any.
    def field_name() : String?
    __ptr = LibTsPack.tree_cursor_field_name(@handle)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
    end
  end

  # Configuration for the `process()` function.
  #
  # Controls which analysis features are enabled and whether chunking is performed.
  class ProcessConfig
    include JSON::Serializable
    # Language name (required).
    getter language : String = ""
    # Extract structural items (functions, classes, etc.). Default: true.
    getter structure : Bool = true
    # Extract import statements. Default: true.
    getter imports : Bool = true
    # Extract export statements. Default: true.
    getter exports : Bool = true
    # Extract comments. Default: false.
    getter comments : Bool = false
    # Extract docstrings. Default: false.
    getter docstrings : Bool = false
    # Extract symbol definitions. Default: false.
    getter symbols : Bool = false
    # Include parse diagnostics. Default: false.
    getter diagnostics : Bool = false
    # Maximum chunk size in bytes. `None` disables chunking.
    getter chunk_max_size : UInt64?
    # Extract hierarchical key/value data tree from data-format files. Default: false.
    #
    # When `true`, [`ProcessResult::data`](crate::ProcessResult::data) is populated
    # with a [`DataNode`](crate::DataNode) tree for supported languages: JSON, YAML,
    # TOML, `.properties`, HCL/HOCON, INI, editorconfig, KDL, CUE, CSV, PSV, PO,
    # nginx config, Caddy config, XML, and DTD.
    #
    # For languages outside this set the field is left as `None`.
    getter data_extraction : Bool = false
  end

  # Thread-safe registry of tree-sitter language parsers.
  #
  # Manages both statically compiled and dynamically loaded language grammars.
  # Use [`LanguageRegistry::new()`] for the default registry, or access the
  # global instance via the module-level convenience functions
  # (`get_language`, `available_languages`, etc.).
  class LanguageRegistry
    # Wraps the owned FFI handle; do not construct directly.
    def initialize(@handle : Void*)
    end
    # Raw handle for passing back across the C ABI.
    def to_unsafe : Void*
      @handle
    end
    def finalize
      LibTsPack.language_registry_free(@handle) unless @handle.null?
    end
    # Create a new registry populated with all statically compiled languages.
    #
    # When the `dynamic-loading` feature is enabled, the registry also knows
    # about dynamically loadable grammars and will load them on demand.
    def self.new() : LanguageRegistry
    __ptr = LibTsPack.language_registry_new()
    raise "LibTsPack.language_registry_new returned a null pointer" if __ptr.null?
    LanguageRegistry.new(__ptr)
    end
    # Get a tree-sitter [`Language`] by name.
    #
    # Resolves aliases (e.g., `"shell"` -> `"bash"`, `"makefile"` -> `"make"`),
    # then looks up the language in the static table. When the `dynamic-loading`
    # feature is enabled, falls back to loading a shared library on demand.
    # Raises:
    #   Returns [`Error::LanguageNotFound`] if the name (after alias resolution)
    # does not match any known grammar.
    def get_language(name : String) : Language
    __ptr = LibTsPack.language_registry_get_language(@handle, name)
    raise "LibTsPack.language_registry_get_language returned a null pointer" if __ptr.null?
    Language.new(__ptr)
    end
    # List all available language names, sorted and deduplicated.
    #
    # Includes statically compiled languages, dynamically loadable languages
    # (if the `dynamic-loading` feature is enabled), and all configured aliases.
    def available_languages() : Array(String)
    __ptr = LibTsPack.language_registry_available_languages(@handle)
    raise "LibTsPack.language_registry_available_languages returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    Array(String).from_json(__json)
    end
    # Check whether a parser is statically compiled into this build.
    #
    # Returns `true` only when the grammar was compiled in at build time
    # (i.e. it appears in the `STATIC_LANGUAGES` table). This is independent
    # of the extension-to-language mapping: `detect_language_from_extension`
    # consults the static ext table for all 306 grammars regardless of which
    # parsers are compiled in.
    #
    # Use this when you need to distinguish "we know the language name" from
    # "we can actually parse files in that language right now".
    #
    # ```no_run
    # use tree_sitter_language_pack::{detect_language_from_extension, LanguageRegistry};
    #
    # let registry = LanguageRegistry::new();
    # // Extension detection uses the static table — independent of compiled parsers.
    # let lang = detect_language_from_extension("feature"); // always returns Some("gherkin")
    # // Parser availability depends on which grammars were compiled in.
    # let can_parse = lang.map(|name| registry.has_parser(name)).unwrap_or(false);
    # ```
    def has_parser(name : String) : Bool
    LibTsPack.language_registry_has_parser(@handle, name)
    end
    # Check whether a language is available by name or alias.
    #
    # Returns `true` if the language can be loaded, either from the static
    # table or from a dynamic library on disk.
    def has_language(name : String) : Bool
    LibTsPack.language_registry_has_language(@handle, name)
    end
    # Return the total number of available languages (including aliases).
    def language_count() : UInt64
    LibTsPack.language_registry_language_count(@handle)
    end
    # Parse source code and extract file intelligence based on config in a single pass.
    def process(source : String, config : ProcessConfig) : ProcessResult
    __handle_config = LibTsPack.process_config_from_json(config.to_json)
    __result = begin
          __ptr = LibTsPack.language_registry_process(@handle, source, __handle_config)
          raise "LibTsPack.language_registry_process returned a null pointer" if __ptr.null?
          __json_ptr = LibTsPack.process_result_to_json(__ptr)
          LibTsPack.process_result_free(__ptr)
          __json = String.new(__json_ptr)
          LibTsPack.free_string(__json_ptr)
          ProcessResult.from_json(__json)
    end
    LibTsPack.process_config_free(__handle_config)
    __result
    end
    def self.default() : LanguageRegistry
    __ptr = LibTsPack.language_registry_default()
    raise "LibTsPack.language_registry_default returned a null pointer" if __ptr.null?
    LanguageRegistry.new(__ptr)
    end
  end

  # Manages downloading and caching of pre-built parser shared libraries.
  class DownloadManager
    # Wraps the owned FFI handle; do not construct directly.
    def initialize(@handle : Void*)
    end
    # Raw handle for passing back across the C ABI.
    def to_unsafe : Void*
      @handle
    end
    def finalize
      LibTsPack.download_manager_free(@handle) unless @handle.null?
    end
    # Create a new download manager for the given version.
    def self.new(version : String) : DownloadManager
    __ptr = LibTsPack.download_manager_new(version)
    raise "LibTsPack.download_manager_new returned a null pointer" if __ptr.null?
    DownloadManager.new(__ptr)
    end
    # List languages that are already downloaded and cached.
    def installed_languages() : Array(String)
    __ptr = LibTsPack.download_manager_installed_languages(@handle)
    raise "LibTsPack.download_manager_installed_languages returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    Array(String).from_json(__json)
    end
    # Download the platform bundle and extract every library file it contains.
    #
    # Unlike [`Self::ensure_languages`], this does not check the manifest language list
    # against archive contents — it simply extracts all `.so`/`.dylib`/`.dll` files
    # from the bundle. Languages in the manifest that are missing from the archive
    # are silently ignored rather than returning an error.
    #
    # Returns the number of library files extracted (including those already cached).
    def download_all_best_effort() : UInt64
    __result = LibTsPack.download_manager_download_all_best_effort(@handle)
    __code = LibTsPack.last_error_code
    if __code != 0
      __ctx_ptr = LibTsPack.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    __result
    end
    # Remove all cached parser libraries.
    #
    # Acquires the cross-process lock so `clean_cache` cannot race a concurrent
    # downloader (avoids Windows sharing-violation errors against an in-flight
    # bundle write). The `.download.lock` file itself is **not** removed — it is
    # permanent infrastructure; deleting it could allow a concurrent process that
    # already opened the file to continue holding a stale lock handle while a new
    # process opens a fresh inode, breaking the mutual-exclusion guarantee.
    def clean_cache() : Nil
    __result = LibTsPack.download_manager_clean_cache(@handle)
    __code = LibTsPack.last_error_code
    if __code != 0
      __ctx_ptr = LibTsPack.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    __result
    end
  end

  class Language
    # Wraps the owned FFI handle; do not construct directly.
    def initialize(@handle : Void*)
    end
    # Raw handle for passing back across the C ABI.
    def to_unsafe : Void*
      @handle
    end
    def finalize
      LibTsPack.language_free(@handle) unless @handle.null?
    end
  end

  # The kind of a data node extracted from a data-format file.
  #
  # Classifies each node in the hierarchical [`DataNode`] tree returned when
  # `data_extraction` is enabled on `ProcessConfig`.
  #
  # # Wire format (public JSON contract)
  #
  # Unit variants serialize as a bare string (`"KeyValue"`). DO NOT add
  # `#[serde(tag = "...")]` or rename variants — every language binding has a
  # hand-written deserializer matching this exact shape, and any change breaks
  # all bindings' `process()` tests simultaneously.
  # Covered by `tests/wire_format.rs`.
  enum DataNodeKind
    KeyValue
    Element
    Sequence
  end

  # The kind of structural item found in source code.
  #
  # Categorizes top-level and nested declarations such as functions, classes,
  # structs, enums, traits, and more. Use [`Other`](StructureKind::Other) for
  # language-specific constructs that do not fit a standard category.
  #
  # # Wire format (public JSON contract)
  #
  # Unit variants serialize as a bare string (`"Function"`); the `Other`
  # variant serializes as a single-keyed object (`{"Other": "macro"}`). DO
  # NOT add `#[serde(tag = "...")]` or rename variants — every language
  # binding has a hand-written deserializer matching this exact shape, and
  # any change breaks all bindings' `process()` tests simultaneously.
  # Covered by `tests/wire_format.rs`.
  abstract class StructureKind
    def self.new(pull : ::JSON::PullParser) : StructureKind
      case pull.kind
      when .string?
        __tag = pull.read_string
        case __tag
        when "Function" then return StructureKind::Function.new
        when "Method" then return StructureKind::Method.new
        when "Class" then return StructureKind::Class.new
        when "Struct" then return StructureKind::Struct.new
        when "Interface" then return StructureKind::Interface.new
        when "Enum" then return StructureKind::Enum.new
        when "Module" then return StructureKind::Module.new
        when "Trait" then return StructureKind::Trait.new
        when "Impl" then return StructureKind::Impl.new
        when "Namespace" then return StructureKind::Namespace.new
        else raise ::JSON::ParseException.new("unknown StructureKind variant: #{__tag}", *pull.location)
        end
      when .begin_object?
        __result : StructureKind? = nil
        pull.read_object do |__key|
          case __key
          when "Other" then __result = StructureKind::Other.new(pull)
          else pull.skip
          end
        end
        return __result || raise ::JSON::ParseException.new("empty StructureKind object", *pull.location)
      else
        raise ::JSON::ParseException.new("invalid StructureKind JSON", *pull.location)
      end
    end

    def self.from_json(string : String) : StructureKind
      new(::JSON::PullParser.new(string))
    end

    abstract def to_json(json : ::JSON::Builder)
  end

  class StructureKind::Function < StructureKind
    def to_json(json : ::JSON::Builder)
      json.string("Function")
    end
  end

  class StructureKind::Method < StructureKind
    def to_json(json : ::JSON::Builder)
      json.string("Method")
    end
  end

  class StructureKind::Class < StructureKind
    def to_json(json : ::JSON::Builder)
      json.string("Class")
    end
  end

  class StructureKind::Struct < StructureKind
    def to_json(json : ::JSON::Builder)
      json.string("Struct")
    end
  end

  class StructureKind::Interface < StructureKind
    def to_json(json : ::JSON::Builder)
      json.string("Interface")
    end
  end

  class StructureKind::Enum < StructureKind
    def to_json(json : ::JSON::Builder)
      json.string("Enum")
    end
  end

  class StructureKind::Module < StructureKind
    def to_json(json : ::JSON::Builder)
      json.string("Module")
    end
  end

  class StructureKind::Trait < StructureKind
    def to_json(json : ::JSON::Builder)
      json.string("Trait")
    end
  end

  class StructureKind::Impl < StructureKind
    def to_json(json : ::JSON::Builder)
      json.string("Impl")
    end
  end

  class StructureKind::Namespace < StructureKind
    def to_json(json : ::JSON::Builder)
      json.string("Namespace")
    end
  end

  class StructureKind::Other < StructureKind
    getter value : String
    def initialize(@value : String)
    end
    def self.new(pull : ::JSON::PullParser) : StructureKind::Other
      __v = String.new(pull)
      new(__v)
    end
    def to_json(json : ::JSON::Builder)
      json.object do
        json.field("Other") do
          @value.to_json(json)
        end
      end
    end
  end

  # The kind of a comment found in source code.
  #
  # Distinguishes between single-line comments, block (multi-line) comments,
  # and documentation comments.
  enum CommentKind
    Line
    Block
    Doc
  end

  # The format of a docstring extracted from source code.
  #
  # Identifies the docstring convention used, which varies by language
  # (e.g., Python triple-quoted strings, JSDoc, Rustdoc `///` comments).
  #
  # # Wire format (public JSON contract)
  #
  # Unit variants serialize as a bare string (`"JSDoc"`); the `Other`
  # variant serializes as a single-keyed object (`{"Other": "rst"}`). DO
  # NOT add `#[serde(tag = "...")]`. Covered by `tests/wire_format.rs`.
  abstract class DocstringFormat
    def self.new(pull : ::JSON::PullParser) : DocstringFormat
      case pull.kind
      when .string?
        __tag = pull.read_string
        case __tag
        when "PythonTripleQuote" then return DocstringFormat::PythonTripleQuote.new
        when "JSDoc" then return DocstringFormat::JsDoc.new
        when "Rustdoc" then return DocstringFormat::Rustdoc.new
        when "GoDoc" then return DocstringFormat::GoDoc.new
        when "JavaDoc" then return DocstringFormat::JavaDoc.new
        else raise ::JSON::ParseException.new("unknown DocstringFormat variant: #{__tag}", *pull.location)
        end
      when .begin_object?
        __result : DocstringFormat? = nil
        pull.read_object do |__key|
          case __key
          when "Other" then __result = DocstringFormat::Other.new(pull)
          else pull.skip
          end
        end
        return __result || raise ::JSON::ParseException.new("empty DocstringFormat object", *pull.location)
      else
        raise ::JSON::ParseException.new("invalid DocstringFormat JSON", *pull.location)
      end
    end

    def self.from_json(string : String) : DocstringFormat
      new(::JSON::PullParser.new(string))
    end

    abstract def to_json(json : ::JSON::Builder)
  end

  class DocstringFormat::PythonTripleQuote < DocstringFormat
    def to_json(json : ::JSON::Builder)
      json.string("PythonTripleQuote")
    end
  end

  class DocstringFormat::JsDoc < DocstringFormat
    def to_json(json : ::JSON::Builder)
      json.string("JSDoc")
    end
  end

  class DocstringFormat::Rustdoc < DocstringFormat
    def to_json(json : ::JSON::Builder)
      json.string("Rustdoc")
    end
  end

  class DocstringFormat::GoDoc < DocstringFormat
    def to_json(json : ::JSON::Builder)
      json.string("GoDoc")
    end
  end

  class DocstringFormat::JavaDoc < DocstringFormat
    def to_json(json : ::JSON::Builder)
      json.string("JavaDoc")
    end
  end

  class DocstringFormat::Other < DocstringFormat
    getter value : String
    def initialize(@value : String)
    end
    def self.new(pull : ::JSON::PullParser) : DocstringFormat::Other
      __v = String.new(pull)
      new(__v)
    end
    def to_json(json : ::JSON::Builder)
      json.object do
        json.field("Other") do
          @value.to_json(json)
        end
      end
    end
  end

  # The kind of an export statement found in source code.
  #
  # Covers named exports, default exports, and re-exports from other modules.
  enum ExportKind
    Named
    Default
    ReExport
  end

  # The kind of a symbol definition found in source code.
  #
  # Categorizes symbol definitions such as variables, constants, functions,
  # classes, types, interfaces, enums, and modules.
  #
  # # Wire format (public JSON contract)
  #
  # Unit variants serialize as a bare string (`"Function"`); the `Other`
  # variant serializes as a single-keyed object (`{"Other": "macro"}`). DO
  # NOT add `#[serde(tag = "...")]`. Covered by `tests/wire_format.rs`.
  abstract class SymbolKind
    def self.new(pull : ::JSON::PullParser) : SymbolKind
      case pull.kind
      when .string?
        __tag = pull.read_string
        case __tag
        when "Variable" then return SymbolKind::Variable.new
        when "Constant" then return SymbolKind::Constant.new
        when "Function" then return SymbolKind::Function.new
        when "Class" then return SymbolKind::Class.new
        when "Type" then return SymbolKind::Type.new
        when "Interface" then return SymbolKind::Interface.new
        when "Enum" then return SymbolKind::Enum.new
        when "Module" then return SymbolKind::Module.new
        else raise ::JSON::ParseException.new("unknown SymbolKind variant: #{__tag}", *pull.location)
        end
      when .begin_object?
        __result : SymbolKind? = nil
        pull.read_object do |__key|
          case __key
          when "Other" then __result = SymbolKind::Other.new(pull)
          else pull.skip
          end
        end
        return __result || raise ::JSON::ParseException.new("empty SymbolKind object", *pull.location)
      else
        raise ::JSON::ParseException.new("invalid SymbolKind JSON", *pull.location)
      end
    end

    def self.from_json(string : String) : SymbolKind
      new(::JSON::PullParser.new(string))
    end

    abstract def to_json(json : ::JSON::Builder)
  end

  class SymbolKind::Variable < SymbolKind
    def to_json(json : ::JSON::Builder)
      json.string("Variable")
    end
  end

  class SymbolKind::Constant < SymbolKind
    def to_json(json : ::JSON::Builder)
      json.string("Constant")
    end
  end

  class SymbolKind::Function < SymbolKind
    def to_json(json : ::JSON::Builder)
      json.string("Function")
    end
  end

  class SymbolKind::Class < SymbolKind
    def to_json(json : ::JSON::Builder)
      json.string("Class")
    end
  end

  class SymbolKind::Type < SymbolKind
    def to_json(json : ::JSON::Builder)
      json.string("Type")
    end
  end

  class SymbolKind::Interface < SymbolKind
    def to_json(json : ::JSON::Builder)
      json.string("Interface")
    end
  end

  class SymbolKind::Enum < SymbolKind
    def to_json(json : ::JSON::Builder)
      json.string("Enum")
    end
  end

  class SymbolKind::Module < SymbolKind
    def to_json(json : ::JSON::Builder)
      json.string("Module")
    end
  end

  class SymbolKind::Other < SymbolKind
    getter value : String
    def initialize(@value : String)
    end
    def self.new(pull : ::JSON::PullParser) : SymbolKind::Other
      __v = String.new(pull)
      new(__v)
    end
    def to_json(json : ::JSON::Builder)
      json.object do
        json.field("Other") do
          @value.to_json(json)
        end
      end
    end
  end

  # Severity level of a diagnostic produced during parsing.
  #
  # Used to classify parse errors, warnings, and informational messages
  # found in the syntax tree.
  enum DiagnosticSeverity
    Error
    Warning
    Info
  end

  # Errors that can occur when using the tree-sitter language pack.
  #
  # Covers language lookup failures, parse errors, query errors, and I/O issues.
  # Feature-gated variants are included when `config`, `download`, or related
  # features are enabled.
  class Error < Exception
  end

  # Detect language name from a file extension (without leading dot).
  def self.detect_language_from_extension(ext : String) : String?
    __ptr = LibTsPack.detect_language_from_extension(ext)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
  end

  # Detect language name from a file path.
  def self.detect_language_from_path(path : String) : String?
    __ptr = LibTsPack.detect_language_from_path(path)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
  end

  # Detect language name from file content using the shebang line (`#!`).
  def self.detect_language_from_content(content : String) : String?
    __ptr = LibTsPack.detect_language_from_content(content)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
  end

  # Get the highlights query for a language, if bundled.
  def self.get_highlights_query(language : String) : String?
    __ptr = LibTsPack.get_highlights_query(language)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
  end

  # Get the injections query for a language, if bundled.
  def self.get_injections_query(language : String) : String?
    __ptr = LibTsPack.get_injections_query(language)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
  end

  # Get the locals query for a language, if bundled.
  def self.get_locals_query(language : String) : String?
    __ptr = LibTsPack.get_locals_query(language)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
  end

  # Get the tags query for a language, if bundled.
  def self.get_tags_query(language : String) : String?
    __ptr = LibTsPack.get_tags_query(language)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
  end

  # Get the indents query for a language, if bundled.
  def self.get_indents_query(language : String) : String?
    __ptr = LibTsPack.get_indents_query(language)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
  end

  # Get the folds query for a language, if bundled.
  def self.get_folds_query(language : String) : String?
    __ptr = LibTsPack.get_folds_query(language)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
  end

  # Get a tree-sitter [`Language`] by name using the global registry.
  def self.get_language(name : String) : Language
    __ptr = LibTsPack.get_language(name)
    raise "LibTsPack.get_language returned a null pointer" if __ptr.null?
    Language.new(__ptr)
  end

  # Get a [`Parser`] pre-configured for the given language.
  def self.get_parser(name : String) : Parser
    __ptr = LibTsPack.get_parser(name)
    raise "LibTsPack.get_parser returned a null pointer" if __ptr.null?
    Parser.new(__ptr)
  end

  # Detect language name from a file path or extension.
  def self.detect_language(path : String) : String?
    __ptr = LibTsPack.detect_language(path)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
  end

  # List all available language names (sorted, deduplicated, includes aliases).
  def self.available_languages() : Array(String)
    __ptr = LibTsPack.available_languages()
    raise "LibTsPack.available_languages returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # Check if a language is available by name or alias.
  def self.has_language(name : String) : Bool
    LibTsPack.has_language(name)
  end

  # Return the number of available languages.
  def self.language_count() : UInt64
    LibTsPack.language_count()
  end

  # Process source code and extract file intelligence using the global registry.
  def self.process(source : String, config : ProcessConfig) : ProcessResult
    __handle_config = LibTsPack.process_config_from_json(config.to_json)
    __ptr = LibTsPack.process(source, __handle_config)
    raise "LibTsPack.process returned a null pointer" if __ptr.null?
    __json_ptr = LibTsPack.process_result_to_json(__ptr)
    LibTsPack.process_result_free(__ptr)
    __json = String.new(__json_ptr)
    LibTsPack.free_string(__json_ptr)
    LibTsPack.process_config_free(__handle_config)
    ProcessResult.from_json(__json)
  end

  # Initialize the language pack with the given configuration.
  def self.init(config : PackConfig) : Nil
    __handle_config = LibTsPack.pack_config_from_json(config.to_json)
    __result = LibTsPack.init(__handle_config)
    __code = LibTsPack.last_error_code
    if __code != 0
      __ctx_ptr = LibTsPack.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    __result
    LibTsPack.pack_config_free(__handle_config)
  end

  # Apply download configuration without downloading anything.
  def self.configure(config : PackConfig) : Nil
    __handle_config = LibTsPack.pack_config_from_json(config.to_json)
    __result = LibTsPack.configure(__handle_config)
    __code = LibTsPack.last_error_code
    if __code != 0
      __ctx_ptr = LibTsPack.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    __result
    LibTsPack.pack_config_free(__handle_config)
  end

  # Download specific languages to the local cache.
  def self.download(names : Array(String)) : UInt64
    __result = LibTsPack.download(names.to_json)
    __code = LibTsPack.last_error_code
    if __code != 0
      __ctx_ptr = LibTsPack.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    __result
  end

  # Prefetch grammars: download any not already loadable from disk, then load every
  def self.prefetch(languages : Array(String)) : Nil
    __result = LibTsPack.prefetch(languages.to_json)
    __code = LibTsPack.last_error_code
    if __code != 0
      __ctx_ptr = LibTsPack.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    __result
  end

  # Download all available languages from the remote manifest.
  def self.download_all() : UInt64
    __result = LibTsPack.download_all()
    __code = LibTsPack.last_error_code
    if __code != 0
      __ctx_ptr = LibTsPack.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    __result
  end

  # Download every language in a named group (e.g. `"web"`, `"data"`).
  def self.download_group(name : String) : UInt64
    __result = LibTsPack.download_group(name)
    __code = LibTsPack.last_error_code
    if __code != 0
      __ctx_ptr = LibTsPack.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    __result
  end

  # Return all language names available in the remote manifest (306).
  def self.manifest_languages() : Array(String)
    __ptr = LibTsPack.manifest_languages()
    raise "LibTsPack.manifest_languages returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # Return languages that are already downloaded and cached locally.
  def self.downloaded_languages() : Array(String)
    __ptr = LibTsPack.downloaded_languages()
    raise "LibTsPack.downloaded_languages returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # Delete all cached parser shared libraries.
  def self.clean_cache() : Nil
    __result = LibTsPack.clean_cache()
    __code = LibTsPack.last_error_code
    if __code != 0
      __ctx_ptr = LibTsPack.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    __result
  end

  # Return the effective cache directory path.
  def self.cache_dir() : String
    __ptr = LibTsPack.cache_dir()
    raise "LibTsPack.cache_dir returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibTsPack.free_string(__ptr)
    __json
  end
end
