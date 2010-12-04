require 'test/unit'

class ThirdTest < Test::Unit::TestCase
  def test_power
    sleep 2
    assert_equal 10000, 10**4
  end
end
