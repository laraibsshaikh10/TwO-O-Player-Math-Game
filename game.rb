require_relative 'player'
require_relative 'turn'

class Game
  #initialize the game with list of player names
  def initialize(player_names)
    @players = player_names.map { |name| Player.new(name) }
    @current_turn = 0
  end

  # start the game
  def start
    while !is_game_over?
      next_turn
    end
    announce_winner
  end

  #proceed to next player's turn
  def next_turn
    current_player = @players[@current_turn]
    turn = Turn.new(current_player)
    turn.play
    @current_turn = (@current_turn + 1) % @players.size
  end

  #check if any of the players have lost all lives and the game is over
  def is_game_over?
    @players.any? { |player| !player.is_alive? }
  end

  #announce the winner
  def announce_winner
    alive_players = @players.select { |player| player.is_alive? }
    if alive_players.size == 1
      winner = alive_players.first
      puts "#{winner.name} wins with a score of #{winner.score}!"
      puts "------GAME OVER------"
      puts "Good Bye!"

    end
  end
end
