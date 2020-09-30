def stock_picker(array)
  prices = {}
  rmaxprice = []
  rminprice = []

  # Array to Hash convertion
  array.each_with_index {|v, i| prices[i] = v}
  puts prices
  puts
  # Max Price Selection
  maxprice = prices.select {|kx,vx| vx == prices.values.max}
  
  
  # Hash to Array for value
  rmaxprice = maxprice.collect { |kx, vx| rmaxprice << vx }
  # p rmaxprice.to_s

  puts "Max/Selling Price is: #{rmaxprice}"

  # MIN Price Selection
  minprice = prices.select {|kn,vn| vn == prices.values.min }
  
  puts minprice.class
  # Hash to Array for value
  rminprice = minprice.collect { |k2n, v2n| rminprice << v2n}
  p "Min/Buying Price is: #{rminprice}"
  puts "============"
  puts "Profit will be for selected days: $#{rmaxprice} - $#{rminprice} "
end

 stock_picker([30,5,4,3,55,1,6,8,13,24])
