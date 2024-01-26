def bubbleSort(numbers)
    order_list = {}
    compare_number = 0

    numbers.each_with_index do |number, number_index|
        number_index.upto(numbers.length - 1) do |current_number|
            atual_number = numbers[current_number]

            if atual_number > compare_number
                compare_number = atual_number
                order_list << compare_number
            end
        end
    end

    puts "#{order_list}"

end

bubbleSort([4,3,78,2,0,2])
