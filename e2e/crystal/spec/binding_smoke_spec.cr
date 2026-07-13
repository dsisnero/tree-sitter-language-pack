require "./spec_helper"

describe TsPackCore do
  it "links the generated binding" do
    TsPackCore::VERSION.should_not be_empty
  end
end
