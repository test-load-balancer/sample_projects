describe "Failing in after" do
  after do
    sleep 2
    10.should == 9
  end

  it "should pass except for after" do
    10.should == 10
  end
end
