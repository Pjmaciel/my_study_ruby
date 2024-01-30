class Game
    def initialize
      @player = Player.new
      @computer = Player.new
      @max_turns = 12
      @current_turn = 1 
      @current_player = @players.first
    end
    
    def play
        puts "Bem-vindo ao Mastermind!"

        while @current_turn <= @max_turns
            puts "\n [Turno #{current_turn}]"
            


            break if game_over?
            current_turn++

            switch_player
        end

        end_game
    end
    
    private 

    def game_over?

    end

    def end_game
    end
end
