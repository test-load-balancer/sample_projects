require 'test/unit'

class LongTeardownTest < Test::Unit::TestCase
  def teardown
    sleep 5
  end

  def test_hex_conversion
    assert_equal 'ff', 255.to_s(16)
  end

  def test_oct_conversion
    assert_equal '22', 18.to_s(8)
  end
end
