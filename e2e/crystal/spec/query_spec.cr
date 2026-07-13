require "./spec_helper"

describe TsPackCore do
  describe "query" do
    it "get_folds_query returns empty for unknown language" do
      __result = TsPackCore.get_folds_query("nonexistent_xyz")
      __result.to_s.should be_empty
    end
    it "get_folds_query returns non-empty string for zig" do
      __result = TsPackCore.get_folds_query("zig")
      __result.to_s.should_not be_empty
    end
    it "Get highlights query for nonexistent language returns null/empty" do
      __result = TsPackCore.get_highlights_query("zzz_nonexistent_lang")
      # TODO: unsupported assertion `not_error`
      __result.to_s.should be_empty
    end
    it "get_highlights_query returns non-empty string for rust" do
      __result = TsPackCore.get_highlights_query("rust")
      __result.to_s.should_not be_empty
    end
    it "get_highlights_query returns None for unknown language" do
      __result = TsPackCore.get_highlights_query("nonexistent_language_xyz")
      __result.to_s.should be_empty
    end
    it "get_indents_query returns non-empty string for cmake" do
      __result = TsPackCore.get_indents_query("cmake")
      __result.to_s.should_not be_empty
    end
    it "get_indents_query returns empty for unknown language" do
      __result = TsPackCore.get_indents_query("nonexistent_xyz")
      __result.to_s.should be_empty
    end
    it "get_injections_query returns non-empty for rust" do
      __result = TsPackCore.get_injections_query("rust")
      __result.to_s.should_not be_empty
    end
    it "get_injections_query returns empty for unknown language" do
      __result = TsPackCore.get_injections_query("nonexistent_xyz")
      __result.to_s.should be_empty
    end
    it "get_locals_query returns non-empty for cue" do
      __result = TsPackCore.get_locals_query("cue")
      __result.to_s.should_not be_empty
    end
    it "get_locals_query returns empty for unknown language" do
      __result = TsPackCore.get_locals_query("nonexistent_xyz")
      __result.to_s.should be_empty
    end
    it "get_tags_query returns non-empty string for kotlin" do
      __result = TsPackCore.get_tags_query("kotlin")
      __result.to_s.should_not be_empty
    end
    it "get_tags_query returns non-empty string for rust" do
      __result = TsPackCore.get_tags_query("rust")
      __result.to_s.should_not be_empty
    end
    it "get_tags_query returns empty for unknown language" do
      __result = TsPackCore.get_tags_query("nonexistent_xyz")
      __result.to_s.should be_empty
    end
  end
end
