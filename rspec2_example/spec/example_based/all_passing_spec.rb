require File.expand_path(File.join(File.dirname(__FILE__), "..", "examples", "example_all_passing"))

describe "All passing using examples" do
  it_should_behave_like "all passing"
end
