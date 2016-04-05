=begin

pseudocode

- method to create list
  - list = hash?
  - item = key; quantity = value
  - make item into symbol
  (focus on input & output)
- method add items to hash
  - push to add items as symbols
  - input: item & quantity
- method to remove item from list
  - input: item want to remove
  - output: hash w/out that item
- method to change quantites
  - input: key whose quantity you want to change and new quantity
  - output: updated list
- print list
  
=end

def create_list
  
  list = {}
  
  puts "Please enter items for list:"
  
  items = gets.chomp
  #quantity = gets.chomp

  items = items.split(' ')
  
  items.each do |key| 
    
    list[key.to_sym] = 1
    
  end
  
  list

end

def add_item(hash)
  
  the_hash = hash
 loop do 
  puts "To exit type fin."
    
  puts "Add an item:"
  
  new_item = gets.chomp
   break if new_item == "fin"
  
  puts "How much?"
  
  amount = gets.chomp
  
  the_hash[new_item.to_sym] = amount
  
  p the_hash
  
  the_hash
 end  
end

def remove_item(new_hash)
  
  hash = new_hash
  
  puts "Would you like to delete anything?"
  
  delete_item = gets.chomp
  
  hash = hash.delete_if {|key, value| key == delete_item.to_sym}
  
 p hash
  
  hash
  
end

def update_quantity(a_hash)
  hash = a_hash
  puts "would you like to change the amount of anything?"
  item = gets.chomp
  amount = gets.chomp
  hash[item.to_sym] = amount
  hash 
  
end



update_quantity(remove_item(add_item(create_list)))