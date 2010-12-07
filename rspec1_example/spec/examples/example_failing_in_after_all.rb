shared_examples_for :spec_failing_in_after_all do
  after :all do
    10.should == 9 #oops bad assertion
  end

  it "should pass multiplication tests except for after(:all)" do
    sleep 1
    (10*5).should == 50
  end
end
