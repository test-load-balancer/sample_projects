require ('test/unit/assertions')

World(Test::Unit::Assertions)

Given /a developer is lazy/ do
  sleep 2
end

When /she has to slove a problem/ do
end

Then /she extracts something reusable and makes it '(\w+)' so that/ do |buzz_word|
  assert_equal 'dry', buzz_word
  sleep 5
end

When /she has to solve the same problem again/ do
  sleep 1
end

Then /she does not have to repeat the whole thing over/ do
  sleep 1
end
