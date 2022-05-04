class Game

  attr_accessor :turn, :player1, :player2

  def initialize
    @turn = 1
    @player1 = 3
    @player2 = 3
  end

  def start 
    puts "----------------------------------------------------"
    puts "         Welcome to the best Math Game"
    puts "----------------------------------------------------"
  end

  def player_loses
    puts "Player 1: #{@player1}/3 lives. Player 2: #{@player2}/3 lives."
    puts "-----Game Over!------"
    exit(0)
  end

  def lives(turn)
    if turn == 1
      @player1 -= 1
    else
      @player2 -= 1
    end
    if @player1 == 0 || player2 == 0
      player_loses
    end
  end

  def change_turn(turn)
    if turn == 1
      @turn = 2
    else 
      @turn = 1
    end
    start
  end

  def start
    puts "--------------------------------------------------------------"
    puts "Player 1: #{@player1}/3 lives. Player 2: #{@player2}/3 lives."
    question = Question.new(turn)
    if !question.start
      lives(turn)
    end
      change_turn(turn)
    puts "--------------------------------------------------------------"
  end

end