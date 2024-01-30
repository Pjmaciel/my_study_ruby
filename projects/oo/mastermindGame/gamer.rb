class Game
    
    def play
        loop do 

            break if game_over?
        
            switch_player
        end
    end
end
