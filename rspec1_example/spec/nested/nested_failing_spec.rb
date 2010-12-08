describe "Failures at multiple depths" do
  before do
    sleep 1
  end

  describe "should fail at" do
    it "level 1" do
      10.should == 20
    end

    describe "level 2" do
      it "as well" do
        30.should == 40
      end
    end
  end

  it "should not fail at the top level" do
    5.should == 5
  end
end
