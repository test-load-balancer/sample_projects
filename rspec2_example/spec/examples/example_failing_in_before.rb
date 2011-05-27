require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))
shared_examples_for "spec failing in before" do
  before do
    sleep 2
    raise "bombed!!! something went wrong"
  end

  it "should pass addition tests except for before" do
    (10 + 5).should == 15
  end
end
