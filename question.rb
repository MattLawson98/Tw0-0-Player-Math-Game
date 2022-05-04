class Question
  attr_accessor :turn
  
  def initialize(turn)
    @turn = turn
  end
  
  def start
    num1 = rand(1..10)
    num2 = rand(1..10)
  
    puts "----Player #{turn}'s turn----"
    puts "Player #{turn}: What is #{num1} + #{num2}?"
    

    answer = $stdin.gets.chomp.to_i

    if answer == num1 + num2
      puts "Yes,you are correct!"
      return true
    else
      puts "Seriously? No!"
      return false
    end
  end

end