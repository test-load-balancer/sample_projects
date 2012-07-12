require File.join(File.dirname(__FILE__), '..', 'lib', 'first')
require File.join(File.dirname(__FILE__), '..', 'lib', 'second')

describe Second do

  it "should know the answer" do
    Second.new.answer.should == 42
  end

  it "should know the question" do
    Second.new.question.should == "not sure"
  end
end
