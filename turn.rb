require_relative 'math_question'

class Turn
  #initialize a turn for current player
  def initialize(player)
    @player = player
  end
  #play the turn by asking the player a question and updating player's state
  def play
    question = MathQuestion.new
    question.generate_question
    puts "#{@player.name}, what is #{question.number1} + #{question.number2}?"
    answer = gets.chomp.to_i
    if question.check_answer(answer)
      puts "Correct Answer!"
      @player.add_score(1)
    else
      puts "Incorrect Answer!"
      @player.lose_life
    end
    puts "#{@player.name} has #{@player.lives} lives left and have a score of #{@player.score}."
  end
end
