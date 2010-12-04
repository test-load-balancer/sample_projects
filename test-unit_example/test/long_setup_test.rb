require 'test/unit'

class LongSetupTest < Test::Unit::TestCase
  def setup
    sleep 3
  end

  def test_string_equality
    assert_equal "foo bar", "foo" + " " + "bar"
  end

  def test_real_no_to_int_comparision
    assert_equal 10.0, 10
  end

  def test_symbol_to_string
    assert_equal "foo_bar", :foo_bar.to_s
  end

  def test_absolute_truth_equality
    assert_equal true, true
  end
end
