=begin
Implement a method #stock_picker that takes in an array of stock 
prices, one for each hypothetical day. It should return a pair of 
days representing the best day to buy and the best day to sell. 
Days start at 0.
=end

def stock_picker(stock_prices)

    result = []
    highest = 0

    stock_prices.each_with_index do |buy_price, buy_index|
        stock_prices.each_with_index do |sell_price, sell_index|
            
            next if buy_index >= sell_index
            
            current = sell_price - buy_price

            if current > highest
                result = [buy_index, sell_index]
                highest = current
            end

        end
    end

    result
end


result = stock_picker([17,3,6,9,15,8,6,1,10])
puts "expected result: [1,4]"
puts "my result: #{result}"