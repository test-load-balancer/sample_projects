require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))

describe "Failing in after(:all)" do
  after(:all) do
    raise "failed, after all..."
  end

  it "should pass except for after(:all)" do
    sleep 2
    42.to_s.should == "42"
  end
end
