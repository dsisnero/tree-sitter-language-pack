require "./spec_helper"

describe TreeSitterLanguagePack do
  describe "data_extraction" do
    it "Data extraction: Caddyfile directives as KeyValue nodes" do
      begin
        __result = TreeSitterLanguagePack.process("localhost\nroot * /var/www\nfile_server\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"caddy\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"caddy\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: CSV rows are positional Sequence nodes with indexed cells" do
      begin
        __result = TreeSitterLanguagePack.process("a,b,c\n1,2,3\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"csv\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"csv\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: CSV single row three cells" do
      begin
        __result = TreeSitterLanguagePack.process("x,y,z\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"csv\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"csv\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: CUE field definitions as KeyValue nodes" do
      begin
        __result = TreeSitterLanguagePack.process("host: \"localhost\"\nport: 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"cue\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cue\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: DTD element declarations as KeyValue nodes" do
      begin
        __result = TreeSitterLanguagePack.process("<!ELEMENT server (host, port)>\n<!ELEMENT host (#PCDATA)>\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"dtd\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"dtd\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: .editorconfig INI dialect sections and settings" do
      begin
        __result = TreeSitterLanguagePack.process("[*.rs]\nindent_style = space\nindent_size = 4\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"editorconfig\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"editorconfig\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: HCL attribute key-value pair" do
      begin
        __result = TreeSitterLanguagePack.process("region = \"us-east-1\"\ncount  = 3\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"hcl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hcl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: HCL block becomes a container KeyValue node" do
      begin
        __result = TreeSitterLanguagePack.process("resource \"aws_instance\" \"web\" {\n  ami = \"ami-123\"\n  instance_type = \"t2.micro\"\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"hcl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hcl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: HJSON flat object (JSON superset with comments)" do
      begin
        __result = TreeSitterLanguagePack.process("{\n  host: \"localhost\"\n  port: 8080\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"hjson\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hjson\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: HOCON (HCL dialect) flat key-value pairs" do
      begin
        __result = TreeSitterLanguagePack.process("host = \"localhost\"\nport = 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"hocon\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hocon\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: INI flat key-value settings" do
      begin
        __result = TreeSitterLanguagePack.process("host=localhost\nport=8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"ini\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ini\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: INI section becomes a container with children" do
      begin
        __result = TreeSitterLanguagePack.process("[database]\nhost=localhost\nport=5432\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"ini\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ini\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: JSON5 flat object (JSON superset with trailing commas and comments)" do
      begin
        __result = TreeSitterLanguagePack.process("{\n  host: \"localhost\",\n  port: 8080,\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"json5\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"json5\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: JSON top-level array emits Sequence nodes" do
      begin
        __result = TreeSitterLanguagePack.process("[1, 2, 3]", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"json\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"json\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: JSON empty object produces zero children" do
      begin
        __result = TreeSitterLanguagePack.process("{}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"json\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"json\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: JSON flat key-value object" do
      begin
        __result = TreeSitterLanguagePack.process("{\"host\": \"localhost\", \"port\": 8080}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"json\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"json\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: JSON nested object preserves hierarchy" do
      begin
        __result = TreeSitterLanguagePack.process("{\"server\": {\"host\": \"x\", \"port\": 8080}}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"json\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"json\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: KDL flat nodes with scalar values" do
      begin
        __result = TreeSitterLanguagePack.process("host \"localhost\"\nport 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"kdl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"kdl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: KDL node with children block" do
      begin
        __result = TreeSitterLanguagePack.process("server {\n  host \"localhost\"\n  port 8080\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"kdl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"kdl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: nginx config directives as KeyValue nodes" do
      begin
        __result = TreeSitterLanguagePack.process("worker_processes 4;\nerror_log /var/log/nginx/error.log;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"nginx\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"nginx\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: PO gettext message pairs with msgid as key and msgstr as value" do
      begin
        __result = TreeSitterLanguagePack.process("msgid \"Hello\"\nmsgstr \"Hallo\"\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"po\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"po\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: .properties dotted key preserved verbatim" do
      begin
        __result = TreeSitterLanguagePack.process("server.host=localhost\nserver.port=8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"properties\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"properties\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: empty .properties file produces zero children" do
      begin
        __result = TreeSitterLanguagePack.process("", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"properties\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"properties\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: .properties flat key=value pairs (closes issue #136)" do
      begin
        __result = TreeSitterLanguagePack.process("host=localhost\nport=8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"properties\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"properties\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: PSV (pipe-separated values) rows as Sequence nodes" do
      begin
        __result = TreeSitterLanguagePack.process("a|b|c\n1|2|3\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"psv\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"psv\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: TOML inline array emits Sequence node" do
      begin
        __result = TreeSitterLanguagePack.process("ports = [8080, 8081, 8082]\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"toml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"toml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: TOML flat key-value pairs" do
      begin
        __result = TreeSitterLanguagePack.process("host = \"localhost\"\nport = 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"toml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"toml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: TOML table section becomes a container KeyValue node" do
      begin
        __result = TreeSitterLanguagePack.process("[server]\nhost = \"localhost\"\nport = 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"toml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"toml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: XML element with attributes" do
      begin
        __result = TreeSitterLanguagePack.process("<server id=\"main\"><host>localhost</host></server>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"xml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"xml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
    end
    it "Data extraction: XML self-closing element produces an Element node" do
      begin
        __result = TreeSitterLanguagePack.process("<br/>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"xml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"xml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
    end
    it "Data extraction: XML nested elements produce child nodes" do
      begin
        __result = TreeSitterLanguagePack.process("<config><host>localhost</host><port>8080</port></config>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"xml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"xml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
    end
    it "Data extraction: YAML flat mapping" do
      begin
        __result = TreeSitterLanguagePack.process("host: localhost\nport: 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"yaml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"yaml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.kind' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: YAML nested block mapping preserves hierarchy" do
      begin
        __result = TreeSitterLanguagePack.process("server:\n  host: localhost\n  port: 8080\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"yaml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"yaml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
      # skipped: field 'data.children' not available on result type
    end
    it "Data extraction: YAML block sequence emits Sequence nodes" do
      begin
        __result = TreeSitterLanguagePack.process("ports:\n  - 8080\n  - 8081\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"data_extraction\":true,\"language\":\"yaml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"yaml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
      # skipped: field 'data' not available on result type
    end
  end
end
