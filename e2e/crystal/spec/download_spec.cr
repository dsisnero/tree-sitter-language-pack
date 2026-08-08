require "./spec_helper"

describe TreeSitterLanguagePack do
  describe "download" do
    it "Get the cache directory path and verify it is non-empty" do
      __result = TreeSitterLanguagePack.cache_dir()
      # TODO: unsupported assertion `not_error`
      __result.to_s.should_not be_empty
    end
    it "Clean the parser cache directory" do
      TreeSitterLanguagePack.clean_cache()
      # void-return: assertion type `not_error`
    end
    it "Configure language pack with a custom cache directory" do
      TreeSitterLanguagePack.configure(TreeSitterLanguagePack::PackConfig.from_json("{\"cache_dir\":\"/tmp/tslp_test_cache\"}"))
      # void-return: assertion type `not_error`
    end
    it "List downloaded languages (may be empty before any downloads)" do
      __result = TreeSitterLanguagePack.downloaded_languages()
      # TODO: unsupported assertion `not_error`
    end
    it "download([]) is a no-op that returns count 0" do
      __result = TreeSitterLanguagePack.download(Array(String).from_json(("[]")))
      # TODO: unsupported assertion `not_error`
      __result.should eq(0)
    end
    it "Initialize language pack with default config" do
      TreeSitterLanguagePack.init(TreeSitterLanguagePack::PackConfig.from_json("{}"))
      # void-return: assertion type `not_error`
    end
    it "download with an unknown language name returns an error" do
      expect_raises(Exception) do
        TreeSitterLanguagePack.download(Array(String).from_json(("[\"zzz_definitely_not_a_real_language_xyz\"]")))
      end
    end
    it "List manifest languages and verify the full downloadable catalog" do
      __result = TreeSitterLanguagePack.manifest_languages()
      # TODO: unsupported assertion `not_error`
      __result.to_s.should_not be_empty
      __result.size.should be >=(300)
      __result.to_s.should contain("python")
    end
    it "download(['python', 'rust']) returns count >= 2" do
      __result = TreeSitterLanguagePack.download(Array(String).from_json(("[\"python\",\"rust\"]")))
      # TODO: unsupported assertion `not_error`
      (__result || 0).should be >= 2
    end
    it "Download a single language parser and verify count" do
      __result = TreeSitterLanguagePack.download(Array(String).from_json(("[\"python\"]")))
      # TODO: unsupported assertion `not_error`
      (__result || 0).should be >= 1
    end
    it "prefetch([]) is a no-op that succeeds" do
      TreeSitterLanguagePack.prefetch(Array(String).from_json(("[]")))
      # void-return: assertion type `not_error`
    end
    it "prefetch(['python']) downloads and loads parser" do
      TreeSitterLanguagePack.prefetch(Array(String).from_json(("[\"python\"]")))
      # void-return: assertion type `not_error`
    end
  end
end
