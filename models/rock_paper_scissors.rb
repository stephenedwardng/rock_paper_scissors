class RockPaperScissors

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play()
    if @player1 == "rock" && @player2 == "paper"
      return @player2
    elsif @player1 == "rock" && @player2 == "scissors"
      return @player1
    elsif @player1 == "paper" && @player2 == "scissors"
      return @player2 
    elsif @player2 == "rock" && @player1 == "paper"
      return @player1
    elsif @player2 == "rock" && @player1 == "scissors"
      return @player2
    elsif @player2 == "paper" && @player1 == "scissors"
      return @player1 
    elsif @player1 == @player2
      return "Nobody"
    end
  end
  
end