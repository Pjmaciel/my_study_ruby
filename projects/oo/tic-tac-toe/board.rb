class Board
    attr_accessor :board
    
def initialize
  @board = Array.new(3,0) { Array.new(3,0)}
end

    def display
        puts " #{board[0][0]} | #{board[0][1]} | #{board[0][2]} "
        puts '---|---|---'
        puts " #{board[1][0]} | #{board[1][1]} | #{board[1][2]} "
        puts '---|---|---'
        puts " #{board[2][0]} | #{board[2][1]} | #{board[2][2]} "
    end
end
