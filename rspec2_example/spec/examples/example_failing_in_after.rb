shared_examples_for "spec failing in after" do
  after do
    raise "bombed!!! something went wrong"
  end

  it "should pass substraction tests except for after" do
    sleep 2
    (10 - 5).should == 5
  end
end
