require "./spec_helper"

describe TreeSitterLanguagePack do
  describe "registry" do
    it "get_language('python') returns a valid Language object" do
      language = TreeSitterLanguagePack.get_language("python")
      # TODO: unsupported assertion `not_error`
    end
    it "get_language('nonexistent_xyz') returns an error for unknown language" do
      expect_raises(Exception) do
        TreeSitterLanguagePack.get_language("nonexistent_xyz")
      end
    end
    it "get_parser('python') returns a valid Parser object" do
      parser = TreeSitterLanguagePack.get_parser("python")
      # TODO: unsupported assertion `not_error`
    end
    it "get_parser('nonexistent_xyz') returns an error for unknown language" do
      expect_raises(Exception) do
        TreeSitterLanguagePack.get_parser("nonexistent_xyz")
      end
    end
    it "get_language('shell') resolves the alias to 'bash' and returns ok" do
      language = TreeSitterLanguagePack.get_language("shell")
      # TODO: unsupported assertion `not_error`
    end
    it "get_parser('shell') resolves the alias and returns a Parser" do
      parser = TreeSitterLanguagePack.get_parser("shell")
      # TODO: unsupported assertion `not_error`
    end
    it "has_language('shell') returns true via alias resolution to 'bash'" do
      __result = TreeSitterLanguagePack.has_language("shell")
      __result.should be_true
    end
    it "has_language('nonexistent') should return false" do
      __result = TreeSitterLanguagePack.has_language("nonexistent")
      __result.should be_false
    end
    it "has_language('python') should return true" do
      __result = TreeSitterLanguagePack.has_language("python")
      __result.should be_true
    end
    it "language_count returns the number of languages available in the current build/cache" do
      __result = TreeSitterLanguagePack.language_count()
      (__result || 0).should be >= 1
    end
    it "available_languages should return a non-empty list" do
      __result = TreeSitterLanguagePack.available_languages()
      __result.to_s.should_not be_empty
    end
  end
end
