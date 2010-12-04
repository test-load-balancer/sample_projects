require 'test/unit'

class OneFailingTest < Test::Unit::TestCase
  def test_it_fails
    sleep 1
    assert_equal 1, 10
  end
end
