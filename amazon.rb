cart_item_prices = [12.43, 19.99, 3.49, 75.00]

cart_item_prices << 5.50

state_tax = 0.06 #this is the state tax in Florida


#for each item in the cart_item_prices
cart_item_prices.each do |x|

#multiply by (1+state_tax)
  total_price = x * (1 + state_tax) 

#output the price + tax, going to store in a new Array
  puts total_price

end
