require "./spec_helper"

describe TreeSitterLanguagePack do
  describe "parsing" do
    it "Parse a Go function declaration and assert node type" do
      __result = TreeSitterLanguagePack.process("package main\nfunc main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"go\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse an HTML element and assert node type" do
      __result = TreeSitterLanguagePack.process("<div>hello</div>", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"html\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a JavaScript class declaration." do
      __result = TreeSitterLanguagePack.process("class Foo { bar() {} }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a JavaScript variable declaration and assert node type" do
      __result = TreeSitterLanguagePack.process("const x = 1;", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a Python function definition and assert node type" do
      __result = TreeSitterLanguagePack.process("def hello(): pass", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a Rust function definition and assert node type" do
      __result = TreeSitterLanguagePack.process("fn main() {}", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rust\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a Rust struct definition." do
      __result = TreeSitterLanguagePack.process("struct Point { x: f64, y: f64 }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rust\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a TypeScript function with type annotations and template literal return" do
      __result = TreeSitterLanguagePack.process("function greet(name: string): string { return `hi ${name}`; }", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typescript\"}"))
      # TODO: unsupported assertion `not_error`
    end
  end
end
