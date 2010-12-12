shared_examples_for "spec failing in before all" do
  before :all do
    sleep 1
    9.should == 10 #oops bad assertion
  end

  it "should pass devisioin tests except for before(:all)" do
    (10 / 5).should == 2
  end
end
