require_relative 'game'

#ask both players to enter their names
puts "Enter name for Player 1:"
player1_name = gets.chomp
puts "Enter name for Player 2:"
player2_name = gets.chomp

game = Game.new([player1_name, player2_name])
game.start
