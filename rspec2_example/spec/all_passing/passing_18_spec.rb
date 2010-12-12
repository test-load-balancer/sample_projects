
describe "Passing spec #{Time.now}" do
  it "should just pass" do
    sleep 1
    1.should == 1
  end
end
