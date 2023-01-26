class Player
  attr_accessor :score, :turn, :name

  def initialize(name) 
    @name = name
    @score = 3
    @turn = false
  end

end