describe "Nested failure in before" do
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
      before do
        10.should == 25
      end

      it "should be alright except for before" do
        10.should == 10
      end
    end
  end
end
