require './players'

class Game 
  attr_reader :player1, :player2
  def initialize()
    @player1 = Player.new()
    @player2 = Player.new()

    @player1.turn = true
  end
end