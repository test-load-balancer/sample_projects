require ('test/unit/assertions')

World(Test::Unit::Assertions)

Given /There are two numbers (\d+) and (\d+)/ do |one, two|
  instance_variable_set("@first", one)
  instance_variable_set("@second", two)
end

When /I add them together/ do
  one = instance_variable_get("@first")
  two = instance_variable_get("@second")
  instance_variable_set("@sum", one.to_i + two.to_i)
end

Then /I should get (\d+)/ do |expected_sum|
  assert_equal expected_sum.to_i, instance_variable_get("@sum")
end
