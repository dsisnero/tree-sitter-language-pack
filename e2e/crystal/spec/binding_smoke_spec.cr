require "./spec_helper"

describe TreeSitterLanguagePack do
  it "links the generated binding" do
    TreeSitterLanguagePack::VERSION.should_not be_empty
  end
end
