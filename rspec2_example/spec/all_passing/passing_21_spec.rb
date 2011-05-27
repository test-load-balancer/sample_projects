require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))

describe "Passing spec #{Time.now}" do
  it "should just pass" do
    sleep 1
    1.should == 1
  end
end
