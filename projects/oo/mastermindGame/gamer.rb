require_relative 'player'
require 'securerandom'

class Game
  attr_accessor :player, :secret_code, :turns

  def initialize(player)
    @player = player
    @secret_code = []
    @turns = 12
  end

  def start
    puts "\nBem-vindo ao Mastermind!"
    puts "Você tem 12 turnos para adivinhar o código secreto."

    player.make_sequence
    generate_secret_code

    play_turn until game_over?

    display_result
  end

  private

  def generate_secret_code
    4.times do 
      @secret_code << SecureRandom.random_number(10) + 1
    end
  end

  def play_turn
    player.make_guess
    feedback = compare_guess

    puts "\nFeedback: #{feedback.join(', ')}"
    puts "Turnos restantes: #{@turns}"

    @turns -= 1
  end

  def compare_guess
    feedback = []
    player.guess.each_with_index do |guess_digit, index|
        if guess_digit == secret_code[index]
            feedback << 'correto'
        else
             feedback << 'incorreto'
        end
    end

    feedback
  end

  def game_over?
    turns.zero? || player.guess == secret_code
  end

  def display_result
    if player.guess == secret_code
      puts "\nParabéns! Você acertou o código secreto!"
    else
      puts "\nVocê perdeu! O código secreto era #{secret_code.join(', ')}"
    end
  end
end

# Para iniciar o jogo:
player1 = Player.new('Jogador1')
game = Game.new(player1)
game.start
