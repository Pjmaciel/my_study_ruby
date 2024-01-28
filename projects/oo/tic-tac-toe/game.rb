require_relative 'board'
require_relative 'player'

class StartGame
  def initialize
    @board = Board.new
    @players = [Player.new('X'), Player.new('O')]
    @current_player = @players.first
  end

  def play
    loop do
      @board.display_board
      @current_player.make_move(@board)
      break if game_over?

      switch_player
    end
  end

  private

  def game_over?
    puts 'Checking for winner or draw...'

    if check_winner?('X')
        puts 'Player X wins!'
        return true
    elsif check_winner?('O')
        puts 'Player O wins!'
        return true
    elsif board_full?
        puts 'It\'s a draw!'
        return true
    else
        puts 'The game continues...'
        return false
    end
    end

  def check_winner?(symbol)
    # Verificar linhas
    @board.board.each { |row| return true if row.all?(symbol) }

    # Verificar colunas
    @board.board.transpose.each { |col| return true if col.all?(symbol) }

    # Verificar diagonais
    return true if (0..2).all? { |i| @board.board[i][i] == symbol }
    return true if (0..2).all? { |i| @board.board[i][2 - i] == symbol }

    false
  end

  def board_full?
    @board.board.flatten.none?(&:empty?)
  end

  def switch_player
    @current_player = (@current_player == @players.first) ? @players.last : @players.first
  end
end

start_game = StartGame.new
start_game.play
