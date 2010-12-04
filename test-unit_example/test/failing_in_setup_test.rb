require 'test/unit'

class FailingInSetupTest < Test::Unit::TestCase
  def setup
    sleep 1
    raise "aw, something went wrong :-("
  end

  def test_a_test_that_fails_in_setup
    assert_equal 10, 10
  end
end
