require "./spec_helper"

describe TreeSitterLanguagePack do
  describe "parsing" do
    it "Parse a Go function declaration and assert node type" do
      begin
        __result = TreeSitterLanguagePack.process("package main\nfunc main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"go\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"go\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Parse an HTML element and assert node type" do
      begin
        __result = TreeSitterLanguagePack.process("<div>hello</div>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"html\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"html\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a JavaScript class declaration." do
      begin
        __result = TreeSitterLanguagePack.process("class Foo { bar() {} }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"javascript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a JavaScript variable declaration and assert node type" do
      begin
        __result = TreeSitterLanguagePack.process("const x = 1;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"javascript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a Python function definition and assert node type" do
      begin
        __result = TreeSitterLanguagePack.process("def hello(): pass", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a Rust function definition and assert node type" do
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
    it "Parse a Rust struct definition." do
      begin
        __result = TreeSitterLanguagePack.process("struct Point { x: f64, y: f64 }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rust\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rust\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a TypeScript function with type annotations and template literal return" do
      begin
        __result = TreeSitterLanguagePack.process("function greet(name: string): string { return `hi ${name}`; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typescript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"typescript\" not downloaded"
        else
          raise e
        end
      end
      # TODO: unsupported assertion `not_error`
    end
  end
end
