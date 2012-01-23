require ('test/unit/assertions')

World(Test::Unit::Assertions)

Given /he wields a lightsaber/ do

end
When /i ask who he is/ do

end
Then /he says he is a '(.+?)'/ do |he_is|
  assert_equal 'jedi knight', he_is
  sleep 1
end
