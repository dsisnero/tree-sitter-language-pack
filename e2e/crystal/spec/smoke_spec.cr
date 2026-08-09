require "./spec_helper"

describe TreeSitterLanguagePack do
  describe "smoke" do
    it "Smoke test: load abl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"abl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"abl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load abnf and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("a = \"b\"\r\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"abnf\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"abnf\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load actionscript and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("var x:int = 1;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"actionscript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"actionscript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ada and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("procedure Main is begin null; end Main;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ada\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ada\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load agda and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("module Main where", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"agda\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"agda\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load aiken and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("fn main() {\n  1\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"aiken\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"aiken\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load al and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"al\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"al\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load angular and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"angular\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"angular\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load apex and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("public class Main {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"apex\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"apex\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load applescript and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("set x to 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"applescript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"applescript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load arduino and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("void setup() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"arduino\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"arduino\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load asciidoc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("= Title\n\nParagraph.", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"asciidoc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"asciidoc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load asm and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("mov eax, 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"asm\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"asm\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load astro and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("---\n---\n<p>hello</p>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"astro\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"astro\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load avro and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("protocol P {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"apache_avro\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"apache_avro\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load awk and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("BEGIN { print \"hello\" }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"awk\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"awk\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ballerina and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("public function main() {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ballerina\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ballerina\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bash and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("echo hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bash\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"bash\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bass and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bass\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"bass\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load batch and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("@echo off\necho hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"batch\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"batch\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load beancount and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("2024-01-01 open Assets:Bank USD", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"beancount\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"beancount\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bibtex and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("@article{key, title={A}}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bibtex\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"bibtex\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bicep and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("param name string", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bicep\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"bicep\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bitbake and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("DESCRIPTION = \"hello\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bitbake\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"bitbake\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load blade and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"blade\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"blade\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bpftrace and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("BEGIN { }\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bpftrace\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"bpftrace\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load brightscript and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"brightscript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"brightscript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bsl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("Procedure Main() EndProcedure", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bsl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"bsl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load c and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("int main() { return 0; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"c\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"c\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load c3 and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"c3\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"c3\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load caddy and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process(":8080 {\n\trespond \"Hello\"\n}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"caddy\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"caddy\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cairo and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("fn main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cairo\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cairo\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load capnp and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("@0xabcdef1234567890;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"capnp\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"capnp\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cedar and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("permit(principal, action, resource);", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cedar\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cedar\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cedarschema and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("entity User;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cedarschema\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cedarschema\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cel and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cel\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cel\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cfml and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cfml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cfml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load chatito and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("%[greeting]\n    hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"chatito\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"chatito\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load chuck and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"chuck\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"chuck\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load circom and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"circom\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"circom\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load clarity and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(define-public (hello) (ok true))", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"clarity\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"clarity\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load clojure and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(def x 1)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"clojure\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"clojure\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cmake and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("cmake_minimum_required(VERSION 3.0)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cmake\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cmake\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cobol and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("       IDENTIFICATION DIVISION.\n       PROGRAM-ID. HELLO.", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cobol\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cobol\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load comment and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("Review: handle edge case", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"comment\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"comment\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load commonlisp and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(defun hello () (print \"hello\"))", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"commonlisp\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"commonlisp\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cooklang and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cooklang\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cooklang\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load corn and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("{ key = \"value\" }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"corn\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"corn\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cpon and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("{\"key\": 1}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cpon\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cpon\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cpp and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("int main() { return 0; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cpp\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cpp\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load crystal and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"crystal\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"crystal\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load csharp and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("class Main {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"csharp\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"csharp\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load css and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("body { color: red; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"css\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"css\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cst and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cst\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cst\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load csv and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("a,b,c\n1,2,3", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"csv\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"csv\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cuda and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("__global__ void kernel() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cuda\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cuda\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cue and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cue\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cue\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cylc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cylc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cylc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cypher and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("MATCH (n) RETURN n\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cypher\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cypher\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cython and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x = 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cython\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"cython\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load d and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("void main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"d\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"d\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load d2 and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("a -> b\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"d2\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"d2\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dart and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("void main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dart\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"dart\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load desktop and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"desktop\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"desktop\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load devicetree and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("/dts-v1/;\n/ { };", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"devicetree\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"devicetree\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dhall and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dhall\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"dhall\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load diff and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("--- a/file\n+++ b/file\n@@ -1 +1 @@\n-old\n+new", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"diff\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"diff\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load djot and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"djot\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"djot\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dockerfile and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("FROM alpine", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dockerfile\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"dockerfile\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dot and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("digraph G { A -> B; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dot\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"dot\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dotenv and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("KEY=value\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dotenv\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"dotenv\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load doxygen and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("/** @brief A function */", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"doxygen\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"doxygen\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dtd and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("<!ELEMENT note (body)>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dtd\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"dtd\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load earthfile and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"earthfile\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"earthfile\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ebnf and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ebnf\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ebnf\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load editorconfig and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"editorconfig\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"editorconfig\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load edoc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("@doc foo\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"edoc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"edoc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load eds and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"eds\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"eds\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load eex and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"eex\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"eex\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load eiffel and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("class FOO\nend\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"eiffel\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"eiffel\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load elisp and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(defun hello () (message \"hello\"))", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"elisp\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"elisp\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load elixir and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("IO.puts(\"hello\")", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"elixir\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"elixir\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load elm and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("module Main exposing (..)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"elm\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"elm\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load elsa and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"elsa\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"elsa\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load elvish and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"elvish\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"elvish\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load embeddedtemplate and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("<%= value %>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"embeddedtemplate\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"embeddedtemplate\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load enforce and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"enforce\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"enforce\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load erlang and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("main() -> ok.", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"erlang\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"erlang\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load facility and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"facility\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"facility\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load faust and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"faust\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"faust\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fennel and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(fn hello [] (print :hello))", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fennel\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"fennel\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fidl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fidl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"fidl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load firrtl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("circuit Main :", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"firrtl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"firrtl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fish and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("echo hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fish\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"fish\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load flatbuffers and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("table Foo {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"flatbuffers\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"flatbuffers\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fluent and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("hello = Hello\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fluent\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"fluent\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load foam and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"foam\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"foam\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load forth and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"forth\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"forth\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fortran and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("program main\nend program main", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fortran\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"fortran\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fsharp and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("let x = 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fsharp\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"fsharp\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fsharp_signature and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("val x: int", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fsharp_signature\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"fsharp_signature\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load func and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("() recv_internal() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"func\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"func\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fusion and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("foo = 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fusion\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"fusion\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gap and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gap\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gap\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gcode and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("G0 X0\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gcode\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gcode\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gdscript and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("extends Node\nfunc _ready():\n\tpass", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gdscript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gdscript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gdshader and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gdshader\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gdshader\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gherkin and parse a simple feature" do
      begin
        __result = TreeSitterLanguagePack.process("Feature: Calculator\n  Scenario: Add numbers\n    Given I have entered 1\n    When I add 2\n    Then the result should be 3\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gherkin\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gherkin\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load git_config and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"git_config\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"git_config\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load git_rebase and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"git_rebase\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"git_rebase\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gitattributes and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("*.txt text", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gitattributes\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gitattributes\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gitcommit and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("feat: add feature\n\nBody text", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gitcommit\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gitcommit\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gitignore and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("*.o\n*.log", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gitignore\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gitignore\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gleam and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("pub fn main() { }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gleam\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gleam\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load glimmer and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"glimmer\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"glimmer\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load glsl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("void main() { gl_Position = vec4(0.0); }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"glsl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"glsl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gn and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("group(\"hello\") {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gn\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gn\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gnuplot and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gnuplot\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gnuplot\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load go and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("package main", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"go\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"go\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load godot_resource and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"godot_resource\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"godot_resource\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gomod and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("module example.com/hello\n\ngo 1.21", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gomod\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gomod\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gosum and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("example.com/pkg v1.0.0 h1:abc=", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gosum\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gosum\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gotmpl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gotmpl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gotmpl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gowork and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gowork\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gowork\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gpg and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gpg\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gpg\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load graphql and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("type Query { hello: String }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"graphql\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"graphql\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gren and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("module Main exposing (..)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gren\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gren\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load groovy and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("def x = 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"groovy\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"groovy\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gstlaunch and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("fakesrc ! fakesink", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gstlaunch\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"gstlaunch\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hack and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("<?hh\nfunction main(): void {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hack\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hack\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load haml and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("%p hello\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"haml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"haml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hare and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("export fn main() void = void;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hare\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hare\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load haskell and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("main = putStrLn \"hello\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"haskell\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"haskell\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load haskell_persistent and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("Person\n  name String\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"haskell_persistent\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"haskell_persistent\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load haxe and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("class Main { static function main() {} }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"haxe\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"haxe\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hcl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("variable \"name\" { type = string }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hcl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hcl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load heex and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("<%= @greeting %>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"heex\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"heex\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hjson and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hjson\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hjson\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hlsl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("float4 main() : SV_Target { return 0; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hlsl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hlsl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hocon and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hocon\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hocon\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hoon and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hoon\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hoon\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load html and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("<p>hello</p>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"html\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"html\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load htmldjango and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"htmldjango\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"htmldjango\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load http and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"http\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"http\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hurl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hurl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hurl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hyprlang and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("general { border_size = 1 }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hyprlang\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"hyprlang\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load idl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("module M {\n};\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"idl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"idl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load idris and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("module Main", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"idris\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"idris\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ini and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("[section]\nkey = value", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ini\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ini\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ispc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("export void main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ispc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ispc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jai and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jai\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"jai\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load janet and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(print \"hello\")", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"janet\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"janet\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load java and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("class Main {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"java\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"java\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load javadoc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javadoc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"javadoc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load javascript and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("console.log('hello');", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"javascript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jinja2 and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("{{ variable }}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jinja2\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"jinja2\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jjdescription and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("commit message\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jjdescription\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"jjdescription\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jq and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process(".[] | select(.key)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jq\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"jq\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jsdoc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("/** @param {string} name */", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jsdoc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"jsdoc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load json and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("{\"key\": \"value\"}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"json\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"json\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load json5 and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"json5\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"json5\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jsonnet and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("{ key: 'value' }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jsonnet\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"jsonnet\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load julia and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("function main() end", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"julia\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"julia\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load just and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"just\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"just\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kcl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kcl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"kcl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kconfig and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("config FOO\n\tbool \"Enable foo\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kconfig\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"kconfig\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kdl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("node \"value\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kdl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"kdl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kitty and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("font_size 12\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kitty\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"kitty\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load koka and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("fun main()\n  1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"koka\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"koka\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kotlin and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("fun main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kotlin\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"kotlin\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load koto and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x = 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"koto\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"koto\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kusto and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("T | count\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kusto\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"kusto\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load lalrpop and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("grammar;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"lalrpop\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"lalrpop\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load latex and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("\\documentclass{article}\n\\begin{document}\nHello\n\\end{document}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"latex\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"latex\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load lean and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("def main : IO Unit := pure ()", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"lean\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"lean\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ledger and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ledger\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ledger\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load leo and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("program test.aleo {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"leo\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"leo\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load less and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"less\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"less\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load linkerscript and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("SECTIONS { .text : { *(.text) } }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"linkerscript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"linkerscript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load liquid and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"liquid\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"liquid\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load llvm and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("define i32 @main() { ret i32 0 }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"llvm\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"llvm\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load llvm_mir and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("---\nname: foo\n...\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"llvm_mir\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"llvm_mir\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load lua and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("print('hello')", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"lua\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"lua\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load luadoc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("---@param name string", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"luadoc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"luadoc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load luap and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("[a-z]+", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"luap\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"luap\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load luau and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("local x: number = 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"luau\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"luau\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load m68k and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process(" move.l d0,d1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"m68k\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"m68k\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load magik and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("_method object.hello\n_endmethod", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"magik\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"magik\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load make and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("all:\n\techo hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"make\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"make\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load markdown and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("# Hello\n\nWorld", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"markdown\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"markdown\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load markdown_inline and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("**bold** and *italic*", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"markdown_inline\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"markdown_inline\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load matlab and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("function y = hello(x)\ny = x;\nend", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"matlab\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"matlab\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load menhir and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("%token EOF\n%%\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"menhir\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"menhir\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load mermaid and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("graph TD\nA --> B", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"mermaid\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"mermaid\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load meson and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("project('hello', 'c')", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"meson\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"meson\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load mlir and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"mlir\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"mlir\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load mojo and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"mojo\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"mojo\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load moonbit and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("fn main {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"moonbit\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"moonbit\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load motoko and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("actor {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"motoko\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"motoko\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load move and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"move\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"move\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nasm and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nasm\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"nasm\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load netlinx and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("PROGRAM_NAME='hello'", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"netlinx\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"netlinx\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nginx and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nginx\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"nginx\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nickel and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nickel\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"nickel\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nim and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("echo \"hello\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nim\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"nim\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ninja and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("rule cc\n  command = cc $in -o $out", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ninja\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ninja\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nix and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("{ pkgs ? import <nixpkgs> {} }: pkgs.hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nix\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"nix\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load norg and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"norg\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"norg\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load norg_meta and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"norg_meta\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"norg_meta\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nqc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("task main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nqc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"nqc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nushell and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nushell\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"nushell\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load objc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("@interface Main @end", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"objc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"objc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ocaml and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("let () = print_endline \"hello\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ocaml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ocaml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ocaml_interface and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("val x : int", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ocaml_interface\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ocaml_interface\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ocamllex and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ocamllex\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ocamllex\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load odin and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("package main", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"odin\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"odin\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load openscad and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"openscad\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"openscad\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load org and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("* Hello\nWorld", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"org\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"org\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pascal and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("program Hello; begin end.", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pascal\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"pascal\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pem and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("-----BEGIN CERTIFICATE-----\ndata\n-----END CERTIFICATE-----", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pem\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"pem\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load penrose and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("type Set\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"penrose\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"penrose\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load perl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("print 'hello';", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"perl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"perl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pgn and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("1. e4 e5 *", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pgn\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"pgn\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load php and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("<?php echo 'hello'; ?>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"php\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"php\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load phpdoc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"phpdoc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"phpdoc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load picat and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("main => true.\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"picat\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"picat\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pkl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("name = \"hello\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pkl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"pkl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load plantuml and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("@startuml\n@enduml\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"plantuml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"plantuml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load po and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("msgid \"hello\"\nmsgstr \"world\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"po\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"po\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load poe_filter and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"poe_filter\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"poe_filter\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pony and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("actor Main\n  new create(env: Env) => None", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pony\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"pony\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load postgres and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("SELECT 1;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"postgres\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"postgres\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load postscript and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("/hello { (Hello) show } def", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"postscript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"postscript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load powershell and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("Write-Host 'hello'", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"powershell\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"powershell\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load printf and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("%d %s", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"printf\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"printf\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load prisma and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("model User { id Int @id }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"prisma\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"prisma\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load prolog and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("hello :- write('hello'), nl.", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"prolog\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"prolog\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load promela and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("init {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"promela\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"promela\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load promql and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"promql\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"promql\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load properties and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("key=value", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"properties\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"properties\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load proto and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("syntax = \"proto3\";", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"proto\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"proto\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load prql and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"prql\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"prql\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load psv and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("a|b|c\n1|2|3", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"psv\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"psv\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pug and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pug\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"pug\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load puppet and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("notify { 'hello': }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"puppet\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"puppet\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load purescript and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("module Main where", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"purescript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"purescript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pymanifest and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("include *.txt", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pymanifest\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"pymanifest\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load python and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("print('hello')", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ql and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ql\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ql\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load qmldir and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("module Example", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"qmldir\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"qmldir\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load qmljs and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("import QtQuick 2.0\nItem {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"qmljs\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"qmljs\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load query and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(identifier) @name", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"query\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"query\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load r and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("print('hello')", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"r\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"r\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load racket and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("#lang racket\n(define x 1)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"racket\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"racket\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rasi and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rasi\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rasi\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load razor and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"razor\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"razor\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rbs and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rbs\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rbs\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load re2c and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("/*!re2c\n  [a-z]+ { return; }\n*/", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"re2c\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"re2c\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load readline and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("set editing-mode vi", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"readline\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"readline\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load reason and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("let x = 1;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"reason\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"reason\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load regex and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"regex\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"regex\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rego and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("package main\ndefault allow = false", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rego\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rego\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load requirements and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("flask>=2.0", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"requirements\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"requirements\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rescript and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("let x = 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rescript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rescript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load robot and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"robot\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"robot\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load roc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"roc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"roc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ron and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(key: \"value\")", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ron\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ron\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rshtml and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("<p>hi</p>\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rshtml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rshtml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rst and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("Hello\n=====\n\nWorld", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rst\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rst\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rtf and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("{\\rtf1 hello}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rtf\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rtf\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ruby and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("puts 'hello'", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ruby\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ruby\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rust and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("fn main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rust\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rust\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sas and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("data _null_;\nrun;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sas\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"sas\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load scala and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("object Main", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"scala\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"scala\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load scfg and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("key value\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"scfg\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"scfg\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load scheme and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(define x 1)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"scheme\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"scheme\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load scss and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("$color: red;\nbody { color: $color; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"scss\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"scss\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sflog and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("37.0 APEX_CODE,DEBUG\n16:06:58.18 (1)|EXECUTION_STARTED\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sflog\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"sflog\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load slang and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"slang\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"slang\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load slim and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("p hello\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"slim\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"slim\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load slint and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("export component Foo {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"slint\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"slint\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load smali and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process(".class public LMain;\n.super Ljava/lang/Object;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"smali\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"smali\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load smalltalk and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"smalltalk\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"smalltalk\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load smithy and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("namespace example\nstring MyString", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"smithy\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"smithy\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sml and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"sml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load snakemake and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"snakemake\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"snakemake\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load snl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("program test\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"snl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"snl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load solidity and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("pragma solidity ^0.8.0;\ncontract Main {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"solidity\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"solidity\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load soql and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("SELECT Id FROM Account\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"soql\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"soql\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sosl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("FIND {test}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sosl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"sosl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load souffle and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"souffle\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"souffle\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sourcepawn and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sourcepawn\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"sourcepawn\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sparql and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("SELECT ?s WHERE { ?s ?p ?o }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sparql\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"sparql\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load spicedb and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("definition user {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"spicedb\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"spicedb\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sql and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("SELECT 1;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sql\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"sql\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sql_bigquery and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sql_bigquery\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"sql_bigquery\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load squirrel and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("function main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"squirrel\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"squirrel\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ssh_config and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("Host example\n  HostName example.com", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ssh_config\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ssh_config\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load stan and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"stan\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"stan\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load starlark and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("def hello(): pass", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"starlark\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"starlark\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load strace and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("open(\"/x\", O_RDONLY) = 3\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"strace\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"strace\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load styled and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("color: red;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"styled\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"styled\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load superhtml and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"superhtml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"superhtml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load svelte and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("<script>let x = 1;</script>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"svelte\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"svelte\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sway and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sway\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"sway\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load swift and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("print(\"hello\")", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"swift\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"swift\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sxhkdrc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("super + a\n\techo hi\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sxhkdrc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"sxhkdrc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sysml and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("package P {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sysml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"sysml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load systemtap and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("probe begin {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"systemtap\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"systemtap\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load systemverilog and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"systemverilog\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"systemverilog\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load t32 and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("PRINT 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"t32\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"t32\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tablegen and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("def Hello : Base {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tablegen\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"tablegen\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tact and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tact\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"tact\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load task and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("todo item\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"task\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"task\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tcl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("puts hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tcl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"tcl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load teal and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"teal\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"teal\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load templ and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"templ\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"templ\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tera and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tera\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"tera\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load terraform and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("resource \"null_resource\" \"main\" {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"terraform\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"terraform\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load test and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("===========\nTest\n===========\n---\n(node)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"test\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"test\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load textproto and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("key: \"value\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"textproto\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"textproto\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load thrift and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("service HelloService {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"thrift\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"thrift\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tlaplus and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("---- MODULE Main ----\n====", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tlaplus\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"tlaplus\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tmux and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tmux\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"tmux\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load todotxt and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"todotxt\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"todotxt\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load toml and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("key = \"value\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"toml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"toml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tsql and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("SELECT 1;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"TSQL\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"TSQL\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tsv and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("a\tb\tc\n1\t2\t3", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tsv\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"tsv\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tsx and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("const App = () => <div />;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tsx\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"tsx\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load turtle and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"turtle\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"turtle\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load twig and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("{{ variable }}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"twig\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"twig\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load typescript and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("const x: number = 42;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typescript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"typescript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load typespec and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typespec\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"typespec\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load typoscript and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typoscript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"typoscript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load typst and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("#let x = 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typst\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"typst\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load udev and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("ACTION==\"add\", KERNEL==\"sd*\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"udev\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"udev\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ungrammar and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("Root = Item*\nItem = 'token'", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ungrammar\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ungrammar\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load unison and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x = 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"unison\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"unison\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load uxntal and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("|0100 LIT 01", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"uxntal\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"uxntal\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load v and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("fn main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"v\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"v\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vala and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("class Foo {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vala\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"vala\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vb and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("Module Main\nEnd Module", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vb\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"vb\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vento and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("hello\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vento\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"vento\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load verilog and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("module main; endmodule", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"verilog\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"verilog\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vhdl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("entity main is end main;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vhdl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"vhdl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vhs and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vhs\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"vhs\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vim and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("echo 'hello'", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vim\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"vim\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vimdoc and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vimdoc\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"vimdoc\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vrl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vrl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"vrl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vue and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("<template><div>hello</div></template>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vue\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"vue\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wast and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(module)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wast\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"wast\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wat and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(module)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wat\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"wat\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wdl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("version 1.0\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wdl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"wdl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wgsl and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("@vertex fn main() -> @builtin(position) vec4f { return vec4f(); }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wgsl\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"wgsl\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wgsl_bevy and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wgsl_bevy\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"wgsl_bevy\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wit and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("package example:pkg;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wit\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"wit\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wolfram and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x = 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wolfram\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"wolfram\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load x86asm and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"x86asm\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"x86asm\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load xcompose and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("<Multi_key> <a> : \"a\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"xcompose\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"xcompose\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load xit and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("[ ] todo\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"xit\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"xit\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load xml and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("<?xml version=\"1.0\"?>\n<root>hello</root>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"xml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"xml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load xquery and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"xquery\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"xquery\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load xresources and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("*.foreground: #ffffff\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"xresources\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"xresources\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load yaml and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("key: value", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"yaml\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"yaml\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load yang and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("module m {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"yang\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"yang\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load yuck and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("(defwidget main [] (label :text \"hi\"))", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"yuck\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"yuck\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load yul and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("object \"C\" {\n  code {\n  }\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"yul\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"yul\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load zig and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("pub fn main() void {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"zig\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"zig\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ziggy and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ziggy\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ziggy\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ziggy_schema and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ziggy_schema\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ziggy_schema\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load zsh and parse a simple snippet" do
      begin
        __result = TreeSitterLanguagePack.process("echo hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"zsh\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"zsh\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
  end
end
