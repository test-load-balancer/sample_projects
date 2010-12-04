require 'test/unit'

class FailingInTeardownTest < Test::Unit::TestCase
  def teardown
    raise "something blew-up!"
  end

  def test_something_that_doesnt_matter
    sleep 1
    assert_equal "doesn't matter", "doesn't matter"
  end
end
