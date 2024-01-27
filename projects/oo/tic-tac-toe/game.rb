
require_relative 'board'
require_relative 'player'


class start_game
    def initialize
        @board = Board.new
        @players = [player.new('X'), player.new('O')]
        @current_player = @players.first
    
    def play
    end
end
