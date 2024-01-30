class Player

    def make_sequence(numbers)
        @numbers = Array.new(4)
        numbers.each do |number|
            print "#{numbers[number]}"
        end
    end
end

player1 = Player.new()
player1.make_sequence([1,2,3,4])
puts player1
