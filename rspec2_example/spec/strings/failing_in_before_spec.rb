require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))
describe "Failing in before" do
  before do
    sleep 1
    raise "aw, something went wrong"
  end

  it "should have passed except for before" do
    "1".should == "1"
  end
end
