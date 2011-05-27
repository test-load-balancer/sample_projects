require ('test/unit/assertions')

World(Test::Unit::Assertions)

Given /I am wondering what to do/ do
  sleep 1
end

When /I ask developers of this project/ do
  sleep 5
end

Then /developers reply after thinking for "(\d+)" seconds, forever!/ do |think_time|
  sleep think_time.to_i
end
