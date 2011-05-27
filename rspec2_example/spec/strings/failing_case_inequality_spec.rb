require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))
describe "upcase and downcase" do
  it "should be the same" do
    sleep 1
    "foo".should == "FOO"
  end

  it "should be different cases" do
    sleep 2
    "foo".should == "foo"
    "FOO".downcase.should == "foo"
  end
end
