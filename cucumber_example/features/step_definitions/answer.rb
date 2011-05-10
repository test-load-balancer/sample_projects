require ('test/unit/assertions')

World(Test::Unit::Assertions)

Given /I am wondering what the hell is the answer/ do
end

When /I ask Deep thought/ do
end

Then /Deep Thought should say "(\d+)"/ do |answer|
   assert_equal 42, answer.to_i
end
