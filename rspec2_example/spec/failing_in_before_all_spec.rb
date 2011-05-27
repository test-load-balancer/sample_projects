require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))

describe "Failing in before(:all)" do
  before(:all) do
    sleep 1
    41.should == 42
  end

  it "should pass except for before(:all)" do
    20.should == 20
  end
end
