require 'test/unit'

class APassingButLongRunningTest < Test::Unit::TestCase
  def test_that_runs_for_quite_some_time
    sleep 10
    assert_equal 2, 4 - 2
  end
end
