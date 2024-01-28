class Player
    attr_reader :symbol

    def initialize(symbol)
        @symbol = symbol
    end

    def make_move(board)
        puts "jogador #{@symbol}, faca sua jogada!"
        print 'Digite a linha (0 ate 2): '
        row = gets.chomp.to_i
        print 'Digite a coluna(0 ate 2)'
        col = gets.chomp.to_i

        unless board.place_symbol(row,col, @symbol)
            puts 'Jogada invalida. Tente novamente'
            make_move(board)
        end
    end

end
