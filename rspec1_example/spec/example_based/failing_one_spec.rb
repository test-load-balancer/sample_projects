require File.expand_path(File.join(File.dirname(__FILE__), "..", "examples", "example_spec_failing"))

describe "Failing one spec" do
  it_should_behave_like "spec_failing"
end
