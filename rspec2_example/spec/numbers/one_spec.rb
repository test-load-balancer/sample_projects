require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))
describe "One" do
  it "should match itself" do
    sleep 1
    1.should == 1
  end

  it "should match converted from string" do
    sleep 1
    1.should == "1".to_i
  end
end
