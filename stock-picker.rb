def stock_picker(stock_array)
  best_stocks = []
  highest_total = -100
  stock_array.each_with_index do |stock_price, index|
    stock_array.each_with_index do |s_p, ind|
      if ind > index
        if s_p - stock_price > highest_total
          highest_total = s_p - stock_price
          best_stocks = [index, ind]
        end
      end
    end
  end
  best_stocks
end

stock_picker([17,3,6,9,15,8,6,1,10])
