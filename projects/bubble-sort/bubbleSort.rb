def bubbleSort(numbers)
    
    numbers.each_with_index do |number, number_index|
        compare_number = number

        (number_index + 1).upto(numbers.length - 1) do |current_number|
            current = numbers[current_number]

            if current < compare_number
                # Trocar os números se estiverem fora de ordem
                numbers[number_index], numbers[current_number] = current, compare_number
                compare_number = current
            end
        end
    end

    puts "#{numbers}"
end

bubbleSort([4, 3, 78, 2, 0, 2])
