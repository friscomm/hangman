class LetterCheck

  attr_accessor :correct_word, :current_guess, :incorrect_letters, :correct_letters

  def initialize(correct_word)
    @correct_word = correct_word
    @current_guess = ''
    @incorrect_letters = []
    @correct_letters = []
  end

  def check_guess(guess)
    if @correct_word.include?(guess)
      @correct_letters << guess
    else
      @incorrect_letters << guess
    end
  end

  def find_position(letter)
    (0 ... @correct_word.length).find_all { |index| @correct_word[index] == letter }
  end

end
