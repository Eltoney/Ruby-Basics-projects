def stock_picker(days)
  buy = 0, sell = 0, profit = -10000000
  days.each_with_index do |buy_price, buy_day_id|
    days.each_with_index do |sell_price, sell_day_id|
      if buy_day_id < sell_day_id && ((sell_price - buy_price) > profit)
        profit = sell_price - buy_price
        buy = buy_day_id
        sell = sell_day_id
      end
    end
  end
  [buy, sell]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
p stock_picker([2, 2, 2, 2, 2])
p stock_picker([9,8,7,6,5,4,3,2,1])
p stock_picker([1,1,1,10,10,10])
