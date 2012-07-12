require File.join(File.dirname(__FILE__), '..', 'lib', 'first')
require File.join(File.dirname(__FILE__), '..', 'lib', 'second')

describe First do

  it "should add" do
    First.new.sum(2, 3).should == 5
  end

  it "should multiply" do
    First.new.prod(2, 3).should == 6
  end
end
