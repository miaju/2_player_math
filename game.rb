require './players'
require './random'

class Game 
  attr_reader :player1, :player2
  def initialize()
    puts "What is the first player's name?"
    player1 = gets.chomp
    @player1 = Player.new(player1)
    puts "What is the second player's name?"
    player2 = gets.chomp
    @player2 = Player.new(player2)

    @player1.turn = true
  end

  def ask() 

    player = @player1.turn ? @player1 : @player2

    question = Problem.new()

    puts "#{player.name}: What is #{question.first} + #{question.second}?"

    player_answer = gets.chomp

    if player_answer.to_i == question.answer
      puts "Yes!! #{question.first} + #{question.second} = #{question.answer}!!"
    else
      puts "No!!! You lose a life"
      player.score -= 1
    end
    (@player1.turn ? @player2 : @player1).turn = true
    player.turn = false

    puts "#{@player1.name}: #{@player1.score}/3 vs #{@player2.name}: #{@player2.score}/3"

  end

  def play()

    while (@player1.score > 0) && (@player2.score > 0)
      ask()
      if (@player1.score > 0) && (@player2.score > 0)
        puts "------NEXT TURN------"
      end
    end
    puts "------END GAME-------"
    winner = @player1.score.to_i == 0 ? @player2 : @player1

    puts "#{winner.name} is the winner with a score of #{winner.score}/3!"
    
  end
end