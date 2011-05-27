require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))

describe "first desc" do
  before do
    sleep 1
  end

  it "should pass" do
    1.should == 1
  end
end

describe "second desc" do
  before do
    sleep 1
  end

  it "should fail" do
    raise "failure, yet again"
  end
end
