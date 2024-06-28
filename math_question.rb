class MathQuestion
  attr_reader :number1, :number2

  #initialize math question with two random numbers
  def initialize
    @number1 = 0
    @number2 = 0
  end

  #generate a question containing random numbers between 1 and 20
  def generate_question
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  #check if player answered correctly
  def check_answer(answer)
    answer == @number1 + @number2
  end
end
