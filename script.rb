def stock_picker(prices)
    changeable_prices = prices
    profit_calendar = {}
    while changeable_prices.length >= 2
        lowest = changeable_prices.min
        p lowest
        sub_array = prices[prices.index(lowest)..]
        highest = sub_array.max
        profit = highest - lowest
        low_day = prices.index(lowest)
        high_day = prices.each_index.select {|i| prices[i] == highest}
        high_day = high_day[-1]
        if profit_calendar.key?(profit)
            profit_calendar[profit] = [profit_calendar[profit]]
            profit_calendar[profit].push([low_day, high_day])
        else
            profit_calendar[profit] = [low_day, high_day]
        end
        changeable_prices = changeable_prices - [lowest]
    end
    profit_calendar[profit_calendar.keys.max]
end