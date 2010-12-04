require 'test/unit'

class FirstTest < Test::Unit::TestCase
  def test_addition
    sleep 1
    assert_equal 20, 10 + 10
  end

  def test_multiplication
    sleep 1
    assert_equal 8, 4*2
  end

  def test_devision
    sleep 1
    assert_equal 9, 27/3
  end
end
