require File.expand_path(File.join(File.dirname(__FILE__), "..", "examples", "example_failing_in_after"))

describe "Failing in after spec" do
  it_should_behave_like "spec failing in after"
end
