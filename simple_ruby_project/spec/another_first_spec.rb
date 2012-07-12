require 'spec'
require File.join(File.dirname(__FILE__), '..', 'lib', 'first')
require File.join(File.dirname(__FILE__), '..', 'lib', 'second')

describe First do

  it "should sub" do
    First.new.diff(8, 3).should == 5
  end

  it "should compute quotent" do
    First.new.quot(37, 6).should == 6
  end
end
