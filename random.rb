
class Problem 
  attr_accessor :first, :second, :answer, :turn

  def initialize()
    @first = rand(1..20)
    @second = rand(1..20)
    @answer = @first + @second
  end

end