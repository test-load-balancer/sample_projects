require File.expand_path(File.join(File.dirname(__FILE__), "..", "examples", "example_failing_in_before"))

describe "Failing in before spec" do
  it_should_behave_like "spec_failing_in_before"
end
