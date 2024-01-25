def stockPicker(prices)
    best_buy_day = 0
    best_sell_day = 0
    best_profit = 0


    prices.each_with_index do |buy_price, buy_day|
        
        (buy_day + 1).upto(prices.length - 1) do |sell_day|
            sell_price = prices[sell_day]

            # calculo do lucro potencial
            current_profit = sell_price - buy_price

            if current_profit > best_profit
                best_profit = current_profit
                best_buy_day = buy_day
                best_sell_day = sell_day
            end
        end
    end
    
    [best_buy_day, best_sell_day]

end

puts "#{stockPicker([17,3,6,9,15,8,6,1,10])}"