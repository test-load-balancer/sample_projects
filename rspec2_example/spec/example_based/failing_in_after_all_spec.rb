require File.expand_path(File.join(File.dirname(__FILE__), "..", "examples", "example_failing_in_after_all"))

describe "Failing in after all spec" do
  it_should_behave_like "spec failing in after all"
end
