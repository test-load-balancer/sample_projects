require ('test/unit/assertions')

World(Test::Unit::Assertions)

Given /you are learning programming/ do
  sleep 1
end

When /you have to write your first program/ do 
end

Then /it should be '(.+?)'/ do |program_name|
  sleep 2
  assert_equal 'hello world', program_name
end

Given /this is the tradition/ do 
end

When /you start with a different program/ do 
end

Then /you jeopardize your chances of ending up as a good programmer/ do 
end
