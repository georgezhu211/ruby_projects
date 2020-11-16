def stock_picker(stocks)
  max_profit = 0
  best_day = []
  stocks.each_with_index do |price, buy_day|
    sell_day = stocks.length - 1
    while sell_day > buy_day
      profit = stocks[sell_day] - stocks[buy_day]
      puts "sell on #{sell_day}, buy on #{buy_day}"
      if profit > max_profit
        max_profit = profit
        best_day = [buy_day, sell_day]
      end
      sell_day -= 1
    end
    puts "----"
  end
  best_day
end