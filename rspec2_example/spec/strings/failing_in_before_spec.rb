describe "Failing in before" do
  before do
    sleep 1
    raise "aw, something went wrong"
  end

  it "should have passed except for before" do
    "1".should == "1"
  end
end
