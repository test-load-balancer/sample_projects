shared_examples_for "spec failing in after all" do
  after :all do
    10.should == 9 #oops bad assertion
  end

  it "should pass multiplication tests except for after(:all)" do
    sleep 1
    (10*5).should == 50
  end
end
