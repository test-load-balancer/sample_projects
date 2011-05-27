require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))
shared_examples_for "spec failing" do
  it "should fail for wrong float comparision" do
    sleep 2
    10.1.should < 9
  end
end
