require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestRockPaperScissors < Minitest::Test

  def setup
    @play1 = RockPaperScissors.new("rock", "paper")
    @play2 = RockPaperScissors.new("rock", "scissors")
    @play3 = RockPaperScissors.new("paper", "scissors")
  end

  def test_rock_paper()
    assert_equal("paper", @play1.play())
  end

  def test_rock_scissors()
    assert_equal("rock", @play2.play())
  end

  def test_paper_scissors()
    assert_equal("scissors", play3.play())
  end

end