require ('test/unit/assertions')

World(Test::Unit::Assertions)

Given /There are two numbers for subtraction (\d+) and (\d+)/ do |one, two|
  instance_variable_set("@first", one)
  instance_variable_set("@second", two)
end

When /I subtract second from the first/ do
  one = instance_variable_get("@first")
  two = instance_variable_get("@second")
  instance_variable_set("@diff", one.to_i - two.to_i)
end

Then /I should get the difference (\d+)/ do |expected_difference|
  assert_equal expected_difference.to_i, instance_variable_get("@diff")
end
