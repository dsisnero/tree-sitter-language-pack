require "./spec_helper"

describe TsPackCore do
  describe "language-detection" do
    it "detect_language_from_content recognizes #!/bin/bash shebang" do
      __result = TsPackCore.detect_language_from_content("#!/bin/bash\necho hi")
      __result.to_s.strip.should eq("bash")
    end
    it "detect_language_from_content returns None when no shebang present" do
      __result = TsPackCore.detect_language_from_content("no shebang here")
      __result.to_s.should be_empty
    end
    it "detect_language_from_content recognizes #!/usr/bin/env python3 shebang" do
      __result = TsPackCore.detect_language_from_content("#!/usr/bin/env python3\npass")
      __result.to_s.strip.should eq("python")
    end
    it "detect_language_from_extension recognizes .cpp as cpp" do
      __result = TsPackCore.detect_language_from_extension("cpp")
      __result.to_s.strip.should eq("cpp")
    end
    it "detect_language_from_extension recognizes .feature as gherkin" do
      __result = TsPackCore.detect_language_from_extension("feature")
      __result.to_s.strip.should eq("gherkin")
    end
    it "detect_language_from_extension recognizes .go as go" do
      __result = TsPackCore.detect_language_from_extension("go")
      __result.to_s.strip.should eq("go")
    end
    it "detect_language_from_extension recognizes .java as java" do
      __result = TsPackCore.detect_language_from_extension("java")
      __result.to_s.strip.should eq("java")
    end
    it "detect_language_from_extension recognizes .js as javascript" do
      __result = TsPackCore.detect_language_from_extension("js")
      __result.to_s.strip.should eq("javascript")
    end
    it "detect_language_from_extension recognizes .php as php" do
      __result = TsPackCore.detect_language_from_extension("php")
      __result.to_s.strip.should eq("php")
    end
    it "detect_language_from_extension recognizes .py as python" do
      __result = TsPackCore.detect_language_from_extension("py")
      __result.to_s.strip.should eq("python")
    end
    it "detect_language_from_extension recognizes .rb as ruby" do
      __result = TsPackCore.detect_language_from_extension("rb")
      __result.to_s.strip.should eq("ruby")
    end
    it "detect_language_from_extension recognizes .rs as rust" do
      __result = TsPackCore.detect_language_from_extension("rs")
      __result.to_s.strip.should eq("rust")
    end
    it "detect_language_from_extension recognizes .ts as typescript" do
      __result = TsPackCore.detect_language_from_extension("ts")
      __result.to_s.strip.should eq("typescript")
    end
    it "detect_language_from_extension returns None for unknown extension .xyz" do
      __result = TsPackCore.detect_language_from_extension("xyz")
      __result.to_s.should be_empty
    end
    it "detect_language_from_path returns None for dotfile .gitignore (no standard extension)" do
      __result = TsPackCore.detect_language_from_path(".gitignore")
      __result.to_s.should be_empty
    end
    it "detect_language_from_path extracts extension from nested path lib/server.go" do
      __result = TsPackCore.detect_language_from_path("lib/server.go")
      __result.to_s.strip.should eq("go")
    end
    it "detect_language_from_path recognizes Main.java in root directory" do
      __result = TsPackCore.detect_language_from_path("Main.java")
      __result.to_s.strip.should eq("java")
    end
    it "detect_language_from_path recognizes app.js in root directory" do
      __result = TsPackCore.detect_language_from_path("app.js")
      __result.to_s.strip.should eq("javascript")
    end
    it "detect_language_from_path extracts extension from nested path src/main.py" do
      __result = TsPackCore.detect_language_from_path("src/main.py")
      __result.to_s.strip.should eq("python")
    end
    it "detect_language_from_path returns None for extensionless file Makefile" do
      __result = TsPackCore.detect_language_from_path("Makefile")
      __result.to_s.should be_empty
    end
    it "detect_language_from_path extracts extension from nested path src/main.rs" do
      __result = TsPackCore.detect_language_from_path("src/main.rs")
      __result.to_s.strip.should eq("rust")
    end
  end
end
