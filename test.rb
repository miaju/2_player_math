require './players'
require './random'
require './game'

player1 = Player.new()

pp player1

q = Problem.new()

pp q

guess = gets.chomp

game = Game.new()
pp game
