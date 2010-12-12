describe "Nested failure in after all" do
  it "should not fail in spec" do
    sleep 1
    1.should == 1
  end

  describe "at level one" do
    it "should not fail" do
      sleep 1
      2.should == 2
    end

    describe "at level two" do
      after(:all) do
        raise "oops, something is not right in after all"
      end

      it "should be alright except for after(:all)" do
        10.should == 10
      end
    end
  end
end
