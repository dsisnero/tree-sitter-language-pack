require "./spec_helper"

describe TreeSitterLanguagePack do
  describe "smoke" do
    it "Smoke test: load abl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"abl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load abnf and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("a = \"b\"\r\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"abnf\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load actionscript and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("var x:int = 1;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"actionscript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ada and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("procedure Main is begin null; end Main;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ada\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load agda and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("module Main where", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"agda\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load aiken and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("fn main() {\n  1\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"aiken\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load al and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"al\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load angular and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"angular\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load apex and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("public class Main {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"apex\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load applescript and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("set x to 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"applescript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load arduino and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("void setup() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"arduino\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load asciidoc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("= Title\n\nParagraph.", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"asciidoc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load asm and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("mov eax, 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"asm\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load astro and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("---\n---\n<p>hello</p>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"astro\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load avro and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("protocol P {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"apache_avro\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load awk and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("BEGIN { print \"hello\" }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"awk\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ballerina and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("public function main() {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ballerina\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bash and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("echo hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bash\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bass and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bass\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load batch and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("@echo off\necho hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"batch\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load beancount and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("2024-01-01 open Assets:Bank USD", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"beancount\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bibtex and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("@article{key, title={A}}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bibtex\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bicep and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("param name string", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bicep\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bitbake and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("DESCRIPTION = \"hello\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bitbake\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load blade and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"blade\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bpftrace and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("BEGIN { }\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bpftrace\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load brightscript and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"brightscript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load bsl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("Procedure Main() EndProcedure", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"bsl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load c and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("int main() { return 0; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"c\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load c3 and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"c3\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load caddy and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process(":8080 {\n\trespond \"Hello\"\n}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"caddy\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cairo and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("fn main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cairo\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load capnp and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("@0xabcdef1234567890;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"capnp\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cedar and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("permit(principal, action, resource);", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cedar\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cedarschema and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("entity User;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cedarschema\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cel and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cel\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cfml and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cfml\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load chatito and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("%[greeting]\n    hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"chatito\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load chuck and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"chuck\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load circom and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"circom\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load clarity and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(define-public (hello) (ok true))", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"clarity\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load clojure and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(def x 1)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"clojure\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cmake and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("cmake_minimum_required(VERSION 3.0)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cmake\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cobol and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("       IDENTIFICATION DIVISION.\n       PROGRAM-ID. HELLO.", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cobol\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load comment and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("Review: handle edge case", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"comment\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load commonlisp and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(defun hello () (print \"hello\"))", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"commonlisp\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cooklang and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cooklang\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load corn and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("{ key = \"value\" }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"corn\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cpon and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("{\"key\": 1}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cpon\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cpp and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("int main() { return 0; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cpp\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load crystal and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"crystal\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load csharp and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("class Main {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"csharp\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load css and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("body { color: red; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"css\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cst and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cst\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load csv and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("a,b,c\n1,2,3", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"csv\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cuda and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("__global__ void kernel() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cuda\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cue and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cue\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cylc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cylc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cypher and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("MATCH (n) RETURN n\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cypher\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load cython and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x = 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"cython\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load d and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("void main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"d\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load d2 and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("a -> b\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"d2\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dart and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("void main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dart\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load desktop and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"desktop\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load devicetree and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("/dts-v1/;\n/ { };", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"devicetree\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dhall and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dhall\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load diff and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("--- a/file\n+++ b/file\n@@ -1 +1 @@\n-old\n+new", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"diff\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load djot and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"djot\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dockerfile and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("FROM alpine", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dockerfile\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dot and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("digraph G { A -> B; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dot\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dotenv and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("KEY=value\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dotenv\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load doxygen and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("/** @brief A function */", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"doxygen\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load dtd and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("<!ELEMENT note (body)>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"dtd\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load earthfile and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"earthfile\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ebnf and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ebnf\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load editorconfig and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"editorconfig\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load edoc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("@doc foo\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"edoc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load eds and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"eds\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load eex and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"eex\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load eiffel and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("class FOO\nend\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"eiffel\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load elisp and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(defun hello () (message \"hello\"))", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"elisp\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load elixir and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("IO.puts(\"hello\")", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"elixir\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load elm and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("module Main exposing (..)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"elm\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load elsa and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"elsa\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load elvish and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"elvish\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load embeddedtemplate and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("<%= value %>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"embeddedtemplate\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load enforce and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"enforce\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load erlang and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("main() -> ok.", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"erlang\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load facility and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"facility\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load faust and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"faust\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fennel and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(fn hello [] (print :hello))", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fennel\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fidl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fidl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load firrtl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("circuit Main :", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"firrtl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fish and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("echo hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fish\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load flatbuffers and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("table Foo {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"flatbuffers\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fluent and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("hello = Hello\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fluent\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load foam and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"foam\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load forth and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"forth\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fortran and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("program main\nend program main", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fortran\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fsharp and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("let x = 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fsharp\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fsharp_signature and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("val x: int", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fsharp_signature\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load func and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("() recv_internal() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"func\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load fusion and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("foo = 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"fusion\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gap and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gap\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gcode and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("G0 X0\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gcode\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gdscript and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("extends Node\nfunc _ready():\n\tpass", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gdscript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gdshader and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gdshader\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gherkin and parse a simple feature" do
      __result = TreeSitterLanguagePack.process("Feature: Calculator\n  Scenario: Add numbers\n    Given I have entered 1\n    When I add 2\n    Then the result should be 3\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gherkin\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load git_config and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"git_config\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load git_rebase and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"git_rebase\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gitattributes and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("*.txt text", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gitattributes\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gitcommit and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("feat: add feature\n\nBody text", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gitcommit\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gitignore and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("*.o\n*.log", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gitignore\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gleam and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("pub fn main() { }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gleam\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load glimmer and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"glimmer\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load glsl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("void main() { gl_Position = vec4(0.0); }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"glsl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gn and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("group(\"hello\") {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gn\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gnuplot and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gnuplot\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load go and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("package main", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"go\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load godot_resource and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"godot_resource\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gomod and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("module example.com/hello\n\ngo 1.21", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gomod\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gosum and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("example.com/pkg v1.0.0 h1:abc=", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gosum\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gotmpl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gotmpl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gowork and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gowork\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gpg and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gpg\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load graphql and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("type Query { hello: String }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"graphql\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gren and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("module Main exposing (..)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gren\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load groovy and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("def x = 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"groovy\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load gstlaunch and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("fakesrc ! fakesink", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"gstlaunch\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hack and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("<?hh\nfunction main(): void {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hack\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load haml and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("%p hello\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"haml\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hare and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("export fn main() void = void;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hare\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load haskell and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("main = putStrLn \"hello\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"haskell\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load haskell_persistent and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("Person\n  name String\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"haskell_persistent\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load haxe and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("class Main { static function main() {} }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"haxe\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hcl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("variable \"name\" { type = string }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hcl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load heex and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("<%= @greeting %>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"heex\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hjson and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hjson\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hlsl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("float4 main() : SV_Target { return 0; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hlsl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hocon and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hocon\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hoon and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hoon\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load html and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("<p>hello</p>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"html\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load htmldjango and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"htmldjango\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load http and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"http\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hurl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hurl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load hyprlang and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("general { border_size = 1 }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"hyprlang\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load idl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("module M {\n};\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"idl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load idris and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("module Main", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"idris\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ini and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("[section]\nkey = value", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ini\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ispc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("export void main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ispc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jai and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jai\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load janet and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(print \"hello\")", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"janet\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load java and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("class Main {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"java\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load javadoc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javadoc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load javascript and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("console.log('hello');", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jinja2 and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("{{ variable }}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jinja2\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jjdescription and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("commit message\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jjdescription\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jq and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process(".[] | select(.key)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jq\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jsdoc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("/** @param {string} name */", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jsdoc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load json and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("{\"key\": \"value\"}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"json\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load json5 and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"json5\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load jsonnet and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("{ key: 'value' }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"jsonnet\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load julia and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("function main() end", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"julia\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load just and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"just\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kcl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kcl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kconfig and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("config FOO\n\tbool \"Enable foo\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kconfig\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kdl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("node \"value\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kdl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kitty and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("font_size 12\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kitty\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load koka and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("fun main()\n  1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"koka\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kotlin and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("fun main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kotlin\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load koto and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x = 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"koto\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load kusto and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("T | count\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kusto\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load lalrpop and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("grammar;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"lalrpop\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load latex and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("\\documentclass{article}\n\\begin{document}\nHello\n\\end{document}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"latex\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load lean and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("def main : IO Unit := pure ()", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"lean\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ledger and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ledger\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load leo and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("program test.aleo {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"leo\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load less and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"less\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load linkerscript and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("SECTIONS { .text : { *(.text) } }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"linkerscript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load liquid and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"liquid\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load llvm and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("define i32 @main() { ret i32 0 }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"llvm\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load llvm_mir and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("---\nname: foo\n...\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"llvm_mir\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load lua and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("print('hello')", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"lua\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load luadoc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("---@param name string", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"luadoc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load luap and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("[a-z]+", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"luap\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load luau and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("local x: number = 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"luau\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load m68k and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process(" move.l d0,d1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"m68k\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load magik and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("_method object.hello\n_endmethod", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"magik\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load make and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("all:\n\techo hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"make\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load markdown and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("# Hello\n\nWorld", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"markdown\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load markdown_inline and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("**bold** and *italic*", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"markdown_inline\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load matlab and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("function y = hello(x)\ny = x;\nend", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"matlab\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load menhir and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("%token EOF\n%%\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"menhir\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load mermaid and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("graph TD\nA --> B", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"mermaid\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load meson and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("project('hello', 'c')", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"meson\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load mlir and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"mlir\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load mojo and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"mojo\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load moonbit and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("fn main {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"moonbit\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load motoko and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("actor {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"motoko\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load move and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"move\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nasm and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nasm\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load netlinx and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("PROGRAM_NAME='hello'", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"netlinx\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nginx and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nginx\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nickel and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nickel\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nim and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("echo \"hello\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nim\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ninja and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("rule cc\n  command = cc $in -o $out", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ninja\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nix and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("{ pkgs ? import <nixpkgs> {} }: pkgs.hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nix\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load norg and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"norg\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load norg_meta and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"norg_meta\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nqc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("task main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nqc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load nushell and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"nushell\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load objc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("@interface Main @end", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"objc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ocaml and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("let () = print_endline \"hello\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ocaml\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ocaml_interface and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("val x : int", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ocaml_interface\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ocamllex and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ocamllex\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load odin and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("package main", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"odin\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load openscad and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"openscad\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load org and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("* Hello\nWorld", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"org\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pascal and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("program Hello; begin end.", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pascal\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pem and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("-----BEGIN CERTIFICATE-----\ndata\n-----END CERTIFICATE-----", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pem\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load penrose and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("type Set\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"penrose\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load perl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("print 'hello';", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"perl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pgn and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("1. e4 e5 *", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pgn\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load php and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("<?php echo 'hello'; ?>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"php\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load phpdoc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"phpdoc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load picat and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("main => true.\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"picat\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pkl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("name = \"hello\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pkl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load plantuml and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("@startuml\n@enduml\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"plantuml\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load po and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("msgid \"hello\"\nmsgstr \"world\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"po\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load poe_filter and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"poe_filter\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pony and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("actor Main\n  new create(env: Env) => None", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pony\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load postgres and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("SELECT 1;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"postgres\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load postscript and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("/hello { (Hello) show } def", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"postscript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load powershell and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("Write-Host 'hello'", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"powershell\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load printf and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("%d %s", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"printf\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load prisma and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("model User { id Int @id }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"prisma\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load prolog and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("hello :- write('hello'), nl.", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"prolog\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load promela and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("init {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"promela\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load promql and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"promql\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load properties and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("key=value", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"properties\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load proto and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("syntax = \"proto3\";", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"proto\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load prql and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"prql\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load psv and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("a|b|c\n1|2|3", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"psv\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pug and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pug\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load puppet and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("notify { 'hello': }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"puppet\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load purescript and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("module Main where", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"purescript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load pymanifest and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("include *.txt", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"pymanifest\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load python and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("print('hello')", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ql and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ql\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load qmldir and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("module Example", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"qmldir\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load qmljs and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("import QtQuick 2.0\nItem {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"qmljs\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load query and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(identifier) @name", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"query\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load r and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("print('hello')", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"r\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load racket and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("#lang racket\n(define x 1)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"racket\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rasi and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rasi\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load razor and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"razor\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rbs and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rbs\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load re2c and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("/*!re2c\n  [a-z]+ { return; }\n*/", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"re2c\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load readline and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("set editing-mode vi", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"readline\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load reason and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("let x = 1;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"reason\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load regex and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"regex\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rego and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("package main\ndefault allow = false", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rego\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load requirements and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("flask>=2.0", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"requirements\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rescript and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("let x = 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rescript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load robot and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"robot\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load roc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"roc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ron and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(key: \"value\")", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ron\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rshtml and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("<p>hi</p>\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rshtml\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rst and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("Hello\n=====\n\nWorld", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rst\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rtf and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("{\\rtf1 hello}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rtf\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ruby and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("puts 'hello'", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ruby\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load rust and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("fn main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rust\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sas and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("data _null_;\nrun;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sas\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load scala and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("object Main", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"scala\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load scfg and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("key value\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"scfg\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load scheme and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(define x 1)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"scheme\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load scss and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("$color: red;\nbody { color: $color; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"scss\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sflog and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("37.0 APEX_CODE,DEBUG\n16:06:58.18 (1)|EXECUTION_STARTED\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sflog\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load slang and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"slang\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load slim and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("p hello\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"slim\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load slint and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("export component Foo {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"slint\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load smali and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process(".class public LMain;\n.super Ljava/lang/Object;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"smali\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load smalltalk and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"smalltalk\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load smithy and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("namespace example\nstring MyString", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"smithy\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sml and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sml\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load snakemake and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"snakemake\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load snl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("program test\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"snl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load solidity and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("pragma solidity ^0.8.0;\ncontract Main {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"solidity\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load soql and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("SELECT Id FROM Account\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"soql\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sosl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("FIND {test}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sosl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load souffle and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"souffle\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sourcepawn and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sourcepawn\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sparql and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("SELECT ?s WHERE { ?s ?p ?o }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sparql\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load spicedb and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("definition user {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"spicedb\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sql and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("SELECT 1;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sql\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sql_bigquery and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sql_bigquery\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load squirrel and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("function main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"squirrel\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ssh_config and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("Host example\n  HostName example.com", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ssh_config\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load stan and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"stan\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load starlark and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("def hello(): pass", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"starlark\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load strace and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("open(\"/x\", O_RDONLY) = 3\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"strace\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load styled and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("color: red;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"styled\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load superhtml and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"superhtml\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load svelte and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("<script>let x = 1;</script>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"svelte\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sway and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sway\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load swift and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("print(\"hello\")", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"swift\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sxhkdrc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("super + a\n\techo hi\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sxhkdrc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load sysml and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("package P {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"sysml\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load systemtap and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("probe begin {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"systemtap\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load systemverilog and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"systemverilog\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load t32 and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("PRINT 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"t32\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tablegen and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("def Hello : Base {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tablegen\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tact and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tact\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load task and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("todo item\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"task\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tcl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("puts hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tcl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load teal and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"teal\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load templ and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"templ\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tera and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tera\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load terraform and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("resource \"null_resource\" \"main\" {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"terraform\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load test and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("===========\nTest\n===========\n---\n(node)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"test\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load textproto and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("key: \"value\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"textproto\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load thrift and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("service HelloService {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"thrift\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tlaplus and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("---- MODULE Main ----\n====", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tlaplus\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tmux and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tmux\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load todotxt and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"todotxt\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load toml and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("key = \"value\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"toml\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tsql and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("SELECT 1;\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"TSQL\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tsv and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("a\tb\tc\n1\t2\t3", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tsv\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load tsx and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("const App = () => <div />;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"tsx\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load turtle and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"turtle\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load twig and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("{{ variable }}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"twig\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load typescript and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("const x: number = 42;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typescript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load typespec and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typespec\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load typoscript and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typoscript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load typst and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("#let x = 1", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typst\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load udev and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("ACTION==\"add\", KERNEL==\"sd*\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"udev\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ungrammar and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("Root = Item*\nItem = 'token'", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ungrammar\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load unison and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x = 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"unison\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load uxntal and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("|0100 LIT 01", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"uxntal\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load v and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("fn main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"v\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vala and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("class Foo {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vala\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vb and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("Module Main\nEnd Module", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vb\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vento and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("hello\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vento\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load verilog and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("module main; endmodule", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"verilog\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vhdl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("entity main is end main;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vhdl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vhs and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vhs\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vim and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("echo 'hello'", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vim\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vimdoc and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vimdoc\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vrl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vrl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load vue and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("<template><div>hello</div></template>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"vue\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wast and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(module)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wast\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wat and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(module)", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wat\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wdl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("version 1.0\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wdl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wgsl and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("@vertex fn main() -> @builtin(position) vec4f { return vec4f(); }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wgsl\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wgsl_bevy and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wgsl_bevy\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wit and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("package example:pkg;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wit\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load wolfram and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x = 1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"wolfram\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load x86asm and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"x86asm\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load xcompose and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("<Multi_key> <a> : \"a\"", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"xcompose\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load xit and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("[ ] todo\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"xit\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load xml and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("<?xml version=\"1.0\"?>\n<root>hello</root>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"xml\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load xquery and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("1\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"xquery\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load xresources and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("*.foreground: #ffffff\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"xresources\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load yaml and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("key: value", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"yaml\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load yang and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("module m {\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"yang\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load yuck and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("(defwidget main [] (label :text \"hi\"))", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"yuck\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load yul and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("object \"C\" {\n  code {\n  }\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"yul\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load zig and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("pub fn main() void {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"zig\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ziggy and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ziggy\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load ziggy_schema and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("x", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ziggy_schema\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Smoke test: load zsh and parse a simple snippet" do
      __result = TreeSitterLanguagePack.process("echo hello", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"zsh\"}"))
      # TODO: unsupported assertion `not_error`
    end
  end
end
