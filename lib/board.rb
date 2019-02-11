class Board

  attr_accessor :board

  def initialize(word)
    @board_length = word.length
    @board = Array.new(@board_length, '_')
  end

  def print_board(current_board)
    puts "\t #{current_board.join(' ')}"
  end

end
