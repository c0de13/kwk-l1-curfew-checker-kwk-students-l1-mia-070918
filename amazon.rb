cart_item_prices = [12.43, 19.99, 3.49, 75.00]

cart_item_prices << 5.50

state_tax = 0.06 #this is the state tax in Florida



count = 1 

arr = []
tot = 0 

#for each item in the cart_item_prices
cart_item_prices.each do |x|

#multiply by (1+state_tax)
  total_price = (x * (1 + state_tax) ).round(2)

#output the price + tax, going to store in a new Array
  puts "Item #{count}:  $#{total_price}."
  arr << total_price
  tot += total_price
  count += 1 
end

puts arr


big_ticket = []
itemsRem = "The items in the cart that were removed :"
count = 1 
remTOTAL = 0

#for each element in arr 
arr.each do |x|
  
#check if item is bigger than 15
  if x > 15
    big_ticket << x 
    itemsRem += " #{count},"
    remTOTAL += x
  end
  count += 1 
  
end #do end  

puts itemsRem
puts big_ticket
tot = tot - itemsRem
puts "The total amount is $#{tot}."
