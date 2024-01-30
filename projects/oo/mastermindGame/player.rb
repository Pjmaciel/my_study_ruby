class Player
    attr_reader :sequence

    def initialize
        @sequence = []
    end

    def make_sequence(numbers)
        puts "Escolha: 
            \n[1] criar seguencia manual
            \n[2] criar seguencia automatica"
        choice = get.chomp.to_i
        case choice
        when 1
            5.times do |num|
                puts "Digite o #{num+1}° numero:"
                number = get.chomp
                if number.match?(/\D/)
                puts "Isso não é um numero. Digite um numero"
                next
            end
                @sequence << number.to_i
            end
            
        when 2 
            
        else
            puts "Escolha invalida, tente novamente"            
        end
    end
end

player1 = Player.new()
player1.make_sequence([1,2,3,4])
puts player1.sequence
