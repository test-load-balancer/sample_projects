describe "Two" do
  before do
    sleep 5
  end

  it "should generate its own string representation" do
    2.to_s.should == "2"
  end

  it "should be the same in hex" do
    2.to_s(16).should == "2"
  end
end
