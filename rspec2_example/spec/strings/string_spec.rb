require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))
describe "String" do
  before do
  end

  it "should generate int for to_i" do
    sleep 2
    "15".to_i.should == 15
  end
end
