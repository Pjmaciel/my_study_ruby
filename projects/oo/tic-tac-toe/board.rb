class Board
  attr_accessor :board

  def initialize
    @board = Array.new(3) { Array.new(3, '') }
  end

  def display_board
    @board.each_with_index do |row, i|
      puts row.join(' | ')
      puts '--------- ' unless i == 2
    end
    puts "\n"
  end

  def place_symbol(row, col, symbol)
    if valid_position?(row, col) && @board[row][col] == ''
      @board[row][col] = symbol
      return true
    else
      return false
    end
  end

  private

  def valid_position?(row, col)
    (0..2).include?(row) && (0..2).include?(col)
  end
end
