require 'test/unit'

class SecondTest < Test::Unit::TestCase
  def setup
    sleep 1
  end

  def test_one
    assert_equal 1, '1'.to_i
  end

  def test_two
    assert_equal 2, '2'.to_i
  end

  def test_three
    assert_equal 3, '3'.to_i
  end
end
