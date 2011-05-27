require ('test/unit/assertions')

World(Test::Unit::Assertions)

Given /I want to understand the concept of domestic debt/ do
  sleep 1
end

When /I ask '(\w+)'/ do |developer_name|
  assert_equal 'pavan', developer_name
  sleep 1
end

Then /he says, what you accumulate when you "spend less time with your girl and more time hacking" is what we call domestic debt/ do
  sleep 7
end

Then /he refuses to answer and says/ do
end

Given /'pavan' has invented this term, you should ask him/ do
end
