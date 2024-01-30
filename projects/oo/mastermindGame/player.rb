require 'securerandom'

class Player
    attr_accessor :sequence, :guess

    def initialize
        @sequence = []
        @guess = []
    end

    def make_sequence
        print "\nEscolha: 
            \n[1] criar seguencia manual
            \n[2] criar seguencia automatica
            \nDigite o numero correspondente: "
        choice = gets.chomp.to_i
        case choice
        when 1
            4.times do |num|
                print "\nDigite o #{num+1}° numero: "
                number = gets.chomp
                if number.match?(/\D/)
                puts "\nIsso não é um numero. Digite um numero"
                next
            end
                @sequence << number.to_i
            end
            
        when 2     
            generate_secret_sequence
        else
            puts "\nEscolha invalida, tente novamente"            
        end
    end
    
    def make_guess
        puts "\nJogador , faça sua previsão! "
        loop do 
            print "\nDigite a sequencia separados por vigula
                \n exemplo ( 1,2,3,4 )
                \nPalpite: "
            player_guess = gets.chomp

            if valid_guess?(player_guess) && player_guess.length == 7
                guess_array = player_guess.split(',').map(&:to_i)
                guess_array.each do |num|
                    @guess << num
                end
                break
            else
                puts "\nEntrada inválida. Certifique-se de usar vírgulas para separar os números."
            end
        end

    end

    private

    def generate_secret_sequence
        4.times do 
            @sequence << SecureRandom.random_number(10) + 1
        end
    end

    def valid_guess?(input)
        input.match?(/\A\d+(,\d+){3}\z/)
    end

end
