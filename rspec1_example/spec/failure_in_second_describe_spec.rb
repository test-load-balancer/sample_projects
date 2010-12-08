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
