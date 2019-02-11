class GameManager

  attr_reader :word
  attr_accessor :points, :current_guess

  def initialize(word)
    @points = 0
    @word = word
    @current_guess = []
    @max_guesses = 8
  end




end
