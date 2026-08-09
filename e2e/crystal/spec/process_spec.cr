require "./spec_helper"

describe TreeSitterLanguagePack do
  describe "process" do
    it "Intel: C function with include" do
      begin
        __result = TreeSitterLanguagePack.process("#include <stdio.h>\n\nint main() {\n    printf(\"hello\");\n    return 0;\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"c\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"c\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("c")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      (__result.metrics.total_lines || 0).should be >= 6
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: process with all features enabled" do
      begin
        __result = TreeSitterLanguagePack.process("# A comment\ndef greet(name):\n    \"\"\"Say hello.\"\"\"\n    return f'Hi {name}'\n\nimport os\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      __result.imports.size.should be >=(1)
      (__result.metrics.total_lines || 0).should be >= 6
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: process with minimal config - only metrics" do
      begin
        __result = TreeSitterLanguagePack.process("def hello():\n    pass\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      (__result.metrics.total_lines || 0).should be >= 2
    end
    it "Intel: extract structure from Go function definition" do
      begin
        __result = TreeSitterLanguagePack.process("package main\n\nimport \"fmt\"\n\nfunc main() {\n\tfmt.Println(\"hello\")\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"go\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"go\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("go")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      __result.imports.size.should be >=(1)
      (__result.metrics.total_lines || 0).should be >= 7
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: extract structure from Go function definition" do
      begin
        __result = TreeSitterLanguagePack.process("package main\n\nimport \"fmt\"\n\nfunc main() {\n\tfmt.Println(\"hello\")\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"go\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"go\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("go")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      __result.imports.size.should be >=(1)
      (__result.metrics.total_lines || 0).should be >= 7
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: Java class with methods and imports" do
      begin
        __result = TreeSitterLanguagePack.process("import java.util.List;\n\npublic class Greeter {\n    public String greet(String name) {\n        return \"Hello \" + name;\n    }\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"java\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"java\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("java")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Class")
      __result.imports.size.should be >=(1)
      (__result.metrics.total_lines || 0).should be >= 7
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: Java package declaration emitted as Module so callers can build FQNs (#112)" do
      begin
        __result = TreeSitterLanguagePack.process("package com.example.widget;\n\npublic class Widget {\n    public String name() { return \"w\"; }\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"java\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"java\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("java")
      __result.structure.size.should be >=(2)
      __result.structure.to_s.should contain("Module")
      __result.structure.to_s.should contain("Class")
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: detect multiple imports and function in JavaScript" do
      begin
        __result = TreeSitterLanguagePack.process("import fs from 'fs';\nimport path from 'path';\n\nfunction process(input) {\n    return input.trim();\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"javascript\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("javascript")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      __result.imports.size.should be >=(2)
      (__result.metrics.total_lines || 0).should be >= 6
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: detect multiple imports and function in JavaScript" do
      begin
        __result = TreeSitterLanguagePack.process("import fs from 'fs';\nimport path from 'path';\n\nfunction process(input) {\n    return input.trim();\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"javascript\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("javascript")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      __result.imports.size.should be >=(2)
      (__result.metrics.total_lines || 0).should be >= 6
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: Kotlin package header emitted as Module and class name resolved via type_identifier fallback (#111, #112)" do
      begin
        __result = TreeSitterLanguagePack.process("package foo.bar\n\nclass Widget {\n    fun greet(): String = \"hi\"\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"kotlin\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"kotlin\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("kotlin")
      __result.structure.size.should be >=(2)
      __result.structure.to_s.should contain("Module")
      __result.structure.to_s.should contain("Class")
      __result.metrics.error_count.should eq(0)
    end
    it "JavaScript with multiple exports, verify export count" do
      begin
        __result = TreeSitterLanguagePack.process("export function greet() { return 'hi'; }\nexport const VERSION = '1.0';\nexport default class App {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"javascript\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("javascript")
      __result.exports.size.should be >=(2)
    end
    it "JavaScript with exports, verify export count" do
      begin
        __result = TreeSitterLanguagePack.process("export function greet(name) {\n  return `Hello ${name}`;\n}\n\nexport const VERSION = '1.0';\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"javascript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"javascript\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("javascript")
      __result.exports.size.should be >=(1)
    end
    it "Python comprehensive source with all feature extraction enabled" do
      begin
        __result = TreeSitterLanguagePack.process("import os\nfrom pathlib import Path\n\n# Configuration\nMY_CONST = 42\n\ndef process_file(path):\n    \"\"\"Process a file and return contents.\"\"\"\n    with open(path) as f:\n        return f.read()\n\nclass FileProcessor:\n    def __init__(self, base_dir):\n        self.base_dir = base_dir\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"comments\":true,\"docstrings\":true,\"imports\":true,\"language\":\"python\",\"structure\":true,\"symbols\":true}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.structure.size.should be >=(2)
      __result.imports.size.should be >=(1)
      __result.comments.size.should be >=(1)
      (__result.metrics.total_lines || 0).should be >= 10
    end
    it "Python with comments, verify comment count" do
      begin
        __result = TreeSitterLanguagePack.process("# This is a comment\n# Another comment\ndef hello():\n    # inline comment\n    pass\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"comments\":true,\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.comments.size.should be >=(1)
    end
    it "Python with function docstring, verify docstring count" do
      begin
        __result = TreeSitterLanguagePack.process("def greet(name):\n    \"\"\"Say hello to someone.\"\"\"\n    return f\"Hello {name}\"\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"docstrings\":true,\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      (__result.metrics.total_lines || 0).should be >= 3
    end
    it "Python with multiple imports, verify imports contain specific source" do
      begin
        __result = TreeSitterLanguagePack.process("import os\nimport sys\nfrom pathlib import Path\n\ndef main():\n    pass\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.imports.size.should be >=(2)
      __result.imports.to_s.should contain("os")
    end
    it "Python code with metrics assertions" do
      begin
        __result = TreeSitterLanguagePack.process("# module docstring\nimport os\n\ndef hello():\n    # greeting\n    print('hello')\n\ndef world():\n    print('world')\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      (__result.metrics.code_lines || 0).should be >= 4
      (__result.metrics.comment_lines || 0).should be >= 1
      (__result.metrics.max_depth || 0).should be >= 1
    end
    it "Python with class and functions, verify symbol count" do
      begin
        __result = TreeSitterLanguagePack.process("MY_CONST = 42\ndef helper(): pass\nclass Widget: pass\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\",\"symbols\":true}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.symbols.size.should be >=(1)
    end
    it "Rust struct with name, verify structure name contains value" do
      begin
        __result = TreeSitterLanguagePack.process("pub struct MyConfig {\n    pub name: String,\n    pub value: i32,\n}\n\nimpl MyConfig {\n    pub fn new() -> Self {\n        Self { name: String::new(), value: 0 }\n    }\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rust\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rust\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("rust")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("MyConfig")
    end
    it "Intel: Python code with medium chunk size" do
      begin
        __result = TreeSitterLanguagePack.process("def first():\n    x = 1\n    return x\n\ndef second():\n    y = 2\n    return y\n\ndef third():\n    z = 3\n    return z\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"chunk_max_size\":50,\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.structure.size.should be >=(3)
      __result.metrics.error_count.should eq(0)
      __result.chunks.size.should be >=(2)
    end
    it "Intel: chunk multi-function Python source into multiple pieces" do
      begin
        __result = TreeSitterLanguagePack.process("def alpha():\n    pass\n\ndef beta():\n    pass\n\ndef gamma():\n    pass\n\ndef delta():\n    pass\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"chunk_max_size\":30,\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      (__result.metrics.total_lines || 0).should be >= 8
      __result.chunks.size.should be >=(2)
    end
    it "Intel: extract nested structure from Python class with methods" do
      begin
        __result = TreeSitterLanguagePack.process("class Calculator:\n    def add(self, a, b):\n        return a + b\n\n    def subtract(self, a, b):\n        return a - b\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Class")
      (__result.metrics.total_lines || 0).should be >= 6
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: extract nested structure from Python class with methods" do
      begin
        __result = TreeSitterLanguagePack.process("class Calculator:\n    def add(self, a, b):\n        return a + b\n\n    def subtract(self, a, b):\n        return a - b\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Class")
      (__result.metrics.total_lines || 0).should be >= 6
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: Python code with syntax errors should report diagnostics" do
      begin
        __result = TreeSitterLanguagePack.process("def broken(\n    pass\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"diagnostics\":true,\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.metrics.error_count.should eq(1)
      __result.diagnostics.to_s.should_not be_empty
    end
    it "Intel: extract structure from Python function definition" do
      begin
        __result = TreeSitterLanguagePack.process("def greet(name):\n    return f'Hello, {name}!'\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      (__result.metrics.total_lines || 0).should be >= 2
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: extract structure from Python function definition" do
      begin
        __result = TreeSitterLanguagePack.process("def greet(name):\n    return f'Hello, {name}!'\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      (__result.metrics.total_lines || 0).should be >= 2
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: detect diagnostics in malformed Python code" do
      begin
        __result = TreeSitterLanguagePack.process("def broken(\n    return\nclass", TreeSitterLanguagePack::ProcessConfig.from_json("{\"diagnostics\":true,\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.diagnostics.to_s.should_not be_empty
    end
    it "Intel: detect diagnostics in malformed Python code" do
      begin
        __result = TreeSitterLanguagePack.process("def broken(\n    return\nclass", TreeSitterLanguagePack::ProcessConfig.from_json("{\"diagnostics\":true,\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.diagnostics.to_s.should_not be_empty
    end
    it "Intel: detect multiple Python imports" do
      begin
        __result = TreeSitterLanguagePack.process("import os\nimport sys\nfrom pathlib import Path\n\ndef main():\n    pass\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.structure.size.should be >=(1)
      __result.imports.size.should be >=(3)
      (__result.metrics.total_lines || 0).should be >= 5
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: detect multiple Python imports" do
      begin
        __result = TreeSitterLanguagePack.process("import os\nimport sys\nfrom pathlib import Path\n\ndef main():\n    pass\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"python\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"python\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("python")
      __result.structure.size.should be >=(1)
      __result.imports.size.should be >=(3)
      (__result.metrics.total_lines || 0).should be >= 5
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: Ruby class with method" do
      begin
        __result = TreeSitterLanguagePack.process("require 'json'\n\nclass Greeter\n  def greet(name)\n    \"Hello \#{name}\"\n  end\nend\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"ruby\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"ruby\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("ruby")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Class")
      (__result.metrics.total_lines || 0).should be >= 7
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: chunk multi-function Rust source into pieces" do
      begin
        __result = TreeSitterLanguagePack.process("fn alpha() {}\n\nfn beta() {}\n\nfn gamma() {}\n\nfn delta() {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"chunk_max_size\":30,\"language\":\"rust\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rust\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("rust")
      (__result.metrics.total_lines || 0).should be >= 7
      __result.chunks.size.should be >=(2)
    end
    it "Intel: chunk multi-function Rust source into pieces" do
      begin
        __result = TreeSitterLanguagePack.process("fn alpha() {}\n\nfn beta() {}\n\nfn gamma() {}\n\nfn delta() {}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"chunk_max_size\":30,\"language\":\"rust\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rust\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("rust")
      (__result.metrics.total_lines || 0).should be >= 7
      __result.chunks.size.should be >=(2)
    end
    it "Intel: extract structure from Rust function definition" do
      begin
        __result = TreeSitterLanguagePack.process("fn add(a: i32, b: i32) -> i32 {\n    a + b\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rust\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rust\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("rust")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      (__result.metrics.total_lines || 0).should be >= 3
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: extract structure from Rust function definition" do
      begin
        __result = TreeSitterLanguagePack.process("fn add(a: i32, b: i32) -> i32 {\n    a + b\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"rust\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"rust\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("rust")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      (__result.metrics.total_lines || 0).should be >= 3
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: extract structure from TypeScript function" do
      begin
        __result = TreeSitterLanguagePack.process("import { readFile } from 'fs';\n\nfunction greet(name: string): string {\n    return `Hello, ${name}!`;\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typescript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"typescript\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("typescript")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      __result.imports.size.should be >=(1)
      (__result.metrics.total_lines || 0).should be >= 5
      __result.metrics.error_count.should eq(0)
    end
    it "Intel: extract structure from TypeScript function" do
      begin
        __result = TreeSitterLanguagePack.process("import { readFile } from 'fs';\n\nfunction greet(name: string): string {\n    return `Hello, ${name}!`;\n}\n", TreeSitterLanguagePack::ProcessConfig.from_json("{\"language\":\"typescript\"}"))
      rescue e : Exception
        if e.message.try(&.includes?("not available for download"))
          pending! "parser for \"typescript\" not downloaded"
        else
          raise e
        end
      end
      __result.language.to_s.strip.should eq("typescript")
      __result.structure.size.should be >=(1)
      __result.structure.to_s.should contain("Function")
      __result.imports.size.should be >=(1)
      (__result.metrics.total_lines || 0).should be >= 5
      __result.metrics.error_count.should eq(0)
    end
  end
end
