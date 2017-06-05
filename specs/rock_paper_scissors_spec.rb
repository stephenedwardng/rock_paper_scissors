require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestRockPaperScissors < Minitest::Test

  def setup
    @play1 = RockPaperScissors.new("rock", "paper")
    @play2 = RockPaperScissors.new("rock", "scissors")
    @play3 = RockPaperScissors.new("paper", "scissors")
    @play4 = RockPaperScissors.new("paper", "rock")
    @play5 = RockPaperScissors.new("scissors", "rock")
    @play6 = RockPaperScissors.new("scissors", "paper")
    @play7 = RockPaperScissors.new("rock", "rock")
    @play8 = RockPaperScissors.new("scissors", "scissors")
    @play9 = RockPaperScissors.new("paper", "paper")
  end

  def test_play__rock_paper()
    assert_equal("paper", @play1.play())
  end

  def test_play__rock_scissors()
    assert_equal("rock", @play2.play())
  end

  def test_play__paper_scissors()
    assert_equal("scissors", @play3.play())
  end

  def test_play__paper_rock()
    assert_equal("paper", @play4.play())
  end

  def test_play__scissors_rock()
    assert_equal("rock", @play5.play())
  end

  def test_play__scissors_paper()
    assert_equal("scissors", @play6.play())
  end

  def test_play__rock_rock()
    assert_equal("Nobody", @play7.play())
  end

  def test_play__scissors_scissors()
    assert_equal("Nobody", @play8.play())
  end

  def test_play__paper_paper()
    assert_equal("Nobody", @play9.play())
  end

end