class Game

  def initialize player1, player2
    @current_player = 0
    @answer = nil
    @input = nil
    @players = [player1, player2]
  end

  def start 
    puts "----- GAME START -----"
    until @players[0].score < 1 or @players[0].score < 1
      turn
    end
    gameOver
  end

  def turn 
    puts "----- NEW TURN -----"
    print "#{@players[@current_player].name}: "
    question
    if @current_player == 0
      @current_player = 1
    elsif @current_player == 1
      @current_player = 0
    end
    puts "P1: #{@players[0].score}/3 vs P2: #{@players[1].score}/3"

  end 

  def question
    number1 = Random.rand(1...21)
    number2 = Random.rand(1...21)
    @answer = number1 + number2
    print  "What does #{number1} plus #{number2} equal? "
    @input = gets.chomp

    if @input.to_i == @answer.to_i
      puts "#{@players[@current_player].name}: YES! You are correct."
    else 
      puts "#{@players[@current_player].name}: Seriously? No!"
      @players[@current_player].score -= 1
    end
  end

  def gameOver
    if @players[0].score == 0
      puts "#{@players[1].name} wins with a score of #{@players[1].score}/3"
    elsif  @players[1].score == 0
      puts "#{@players[0].name} wins with a score of #{@players[0].score}/3"
    end
    puts "----- GAME END -----"
    puts "Good bye!"
  end
end
