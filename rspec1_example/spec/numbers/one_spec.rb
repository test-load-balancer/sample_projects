describe "One" do
  it "should match itself" do
    sleep 1
    1.should == 1
  end

  it "should match converted from string" do
    sleep 1
    1.should == "1".to_i
  end
end
