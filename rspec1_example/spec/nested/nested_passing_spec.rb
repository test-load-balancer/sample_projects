describe "Top level passing" do
  before do
    sleep 1
  end
  
  it "should pass" do
    1.should == 1
  end

  describe "inner level one" do
    it "should pass too" do
      sleep 1
      2.should == 2
    end

    describe "inner level two" do
      before do
        sleep 1
      end
      
      it "should pass as well" do
        3.should == 3
      end
    end
  end
end

describe "second set" do
  it "should pass" do
    sleep 1
    10.should == 10
  end
end
