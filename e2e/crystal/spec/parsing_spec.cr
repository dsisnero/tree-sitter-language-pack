require "./spec_helper"

describe TsPackCore do
  describe "parsing" do
    it "Parse a Go function declaration and assert node type" do
      __result = TsPackCore.process("package main\nfunc main() {}", TsPackCore::ProcessConfig.from_json("{\"language\":\"go\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse an HTML element and assert node type" do
      __result = TsPackCore.process("<div>hello</div>", TsPackCore::ProcessConfig.from_json("{\"language\":\"html\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a JavaScript class declaration." do
      __result = TsPackCore.process("class Foo { bar() {} }", TsPackCore::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a JavaScript variable declaration and assert node type" do
      __result = TsPackCore.process("const x = 1;", TsPackCore::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a Python function definition and assert node type" do
      __result = TsPackCore.process("def hello(): pass", TsPackCore::ProcessConfig.from_json("{\"language\":\"python\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a Rust function definition and assert node type" do
      __result = TsPackCore.process("fn main() {}", TsPackCore::ProcessConfig.from_json("{\"language\":\"rust\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a Rust struct definition." do
      __result = TsPackCore.process("struct Point { x: f64, y: f64 }", TsPackCore::ProcessConfig.from_json("{\"language\":\"rust\"}"))
      # TODO: unsupported assertion `not_error`
    end
    it "Parse a TypeScript function with type annotations and template literal return" do
      __result = TsPackCore.process("function greet(name: string): string { return `hi ${name}`; }", TsPackCore::ProcessConfig.from_json("{\"language\":\"typescript\"}"))
      # TODO: unsupported assertion `not_error`
    end
  end
end
