require "./spec_helper"

describe TreeSitterLanguagePack do
  describe "data_extraction" do
    it "Data extraction: Caddyfile directives as KeyValue nodes" do
      __result = TreeSitterLanguagePack.process("localhost\nroot * /var/www\nfile_server\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"caddy\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: CSV rows are positional Sequence nodes with indexed cells" do
      __result = TreeSitterLanguagePack.process("a,b,c\n1,2,3\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"csv\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: CSV single row three cells" do
      __result = TreeSitterLanguagePack.process("x,y,z\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"csv\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: CUE field definitions as KeyValue nodes" do
      __result = TreeSitterLanguagePack.process("host: \"localhost\"\nport: 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"cue\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: DTD element declarations as KeyValue nodes" do
      __result = TreeSitterLanguagePack.process("<!ELEMENT server (host, port)>\n<!ELEMENT host (#PCDATA)>\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"dtd\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: .editorconfig INI dialect sections and settings" do
      __result = TreeSitterLanguagePack.process("[*.rs]\nindent_style = space\nindent_size = 4\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"editorconfig\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: HCL attribute key-value pair" do
      __result = TreeSitterLanguagePack.process("region = \"us-east-1\"\ncount  = 3\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"hcl\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: HCL block becomes a container KeyValue node" do
      __result = TreeSitterLanguagePack.process("resource \"aws_instance\" \"web\" {\n  ami = \"ami-123\"\n  instance_type = \"t2.micro\"\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"hcl\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: HJSON flat object (JSON superset with comments)" do
      __result = TreeSitterLanguagePack.process("{\n  host: \"localhost\"\n  port: 8080\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"hjson\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: HOCON (HCL dialect) flat key-value pairs" do
      __result = TreeSitterLanguagePack.process("host = \"localhost\"\nport = 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"hocon\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: INI flat key-value settings" do
      __result = TreeSitterLanguagePack.process("host=localhost\nport=8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"ini\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: INI section becomes a container with children" do
      __result = TreeSitterLanguagePack.process("[database]\nhost=localhost\nport=5432\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"ini\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: JSON5 flat object (JSON superset with trailing commas and comments)" do
      __result = TreeSitterLanguagePack.process("{\n  host: \"localhost\",\n  port: 8080,\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"json5\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: JSON top-level array emits Sequence nodes" do
      __result = TreeSitterLanguagePack.process("[1, 2, 3]", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"json\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: JSON empty object produces zero children" do
      __result = TreeSitterLanguagePack.process("{}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"json\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: JSON flat key-value object" do
      __result = TreeSitterLanguagePack.process("{\"host\": \"localhost\", \"port\": 8080}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"json\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: JSON nested object preserves hierarchy" do
      __result = TreeSitterLanguagePack.process("{\"server\": {\"host\": \"x\", \"port\": 8080}}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"json\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: KDL flat nodes with scalar values" do
      __result = TreeSitterLanguagePack.process("host \"localhost\"\nport 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"kdl\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: KDL node with children block" do
      __result = TreeSitterLanguagePack.process("server {\n  host \"localhost\"\n  port 8080\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"kdl\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: nginx config directives as KeyValue nodes" do
      __result = TreeSitterLanguagePack.process("worker_processes 4;\nerror_log /var/log/nginx/error.log;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"nginx\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: PO gettext message pairs with msgid as key and msgstr as value" do
      __result = TreeSitterLanguagePack.process("msgid \"Hello\"\nmsgstr \"Hallo\"\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"po\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: .properties dotted key preserved verbatim" do
      __result = TreeSitterLanguagePack.process("server.host=localhost\nserver.port=8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"properties\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: empty .properties file produces zero children" do
      __result = TreeSitterLanguagePack.process("", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"properties\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: .properties flat key=value pairs (closes issue #136)" do
      __result = TreeSitterLanguagePack.process("host=localhost\nport=8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"properties\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: PSV (pipe-separated values) rows as Sequence nodes" do
      __result = TreeSitterLanguagePack.process("a|b|c\n1|2|3\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"psv\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: TOML inline array emits Sequence node" do
      __result = TreeSitterLanguagePack.process("ports = [8080, 8081, 8082]\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"toml\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: TOML flat key-value pairs" do
      __result = TreeSitterLanguagePack.process("host = \"localhost\"\nport = 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"toml\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: TOML table section becomes a container KeyValue node" do
      __result = TreeSitterLanguagePack.process("[server]\nhost = \"localhost\"\nport = 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"toml\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: XML element with attributes" do
      __result = TreeSitterLanguagePack.process("<server id=\"main\"><host>localhost</host></server>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"xml\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: XML self-closing element produces an Element node" do
      __result = TreeSitterLanguagePack.process("<br/>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"xml\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
    end
    it "Data extraction: XML nested elements produce child nodes" do
      __result = TreeSitterLanguagePack.process("<config><host>localhost</host><port>8080</port></config>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"xml\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
    end
    it "Data extraction: YAML flat mapping" do
      __result = TreeSitterLanguagePack.process("host: localhost\nport: 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"yaml\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: YAML nested block mapping preserves hierarchy" do
      __result = TreeSitterLanguagePack.process("server:\n  host: localhost\n  port: 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"yaml\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: YAML block sequence emits Sequence nodes" do
      __result = TreeSitterLanguagePack.process("ports:\n  - 8080\n  - 8081\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"yaml\"}"))
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
    end
  end
end
