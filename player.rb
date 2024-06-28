class Player
  attr_reader :name, :lives, :score

  #initialize new player with name, number of lives and score
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  #at each loss, reduce life by 1
  def lose_life
    @lives -= 1
  end

  #check if player has any lives left
  def is_alive?
    @lives > 0
  end

  #for each correct answer, add a point
  def add_score(points)
    @score += points
  end
end
