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

# !! For release 3 in the test, 'Ice cream' cannot be entered in the first string, 
# !! but it can be entered as an add-in item. So, for example, if you enter items one by one (press enter after each item), 
# !! as the release kind of shows you doing with the test cases, "ice cream" works perfectly fine 

def create_list
  
  list = {}
  
  puts "Please enter items for list:"
  
  items = gets.chomp

  items = items.split(' ')
  
  items.each do |key| 
    
    list[key.to_sym] = "1"
    
  end
  
  list

end

def add_item(hash)
  
  the_hash = hash
  
  puts "This is your list:"
  puts "#{the_hash}"
  
 loop do 
  puts "Add an item:"
  puts "(To exit type 'fin')"
  
  new_item = gets.chomp
  break if new_item == "fin"
  
  puts "Amount?"
  
  amount = gets.chomp
  break if amount == "fin"
  
  the_hash[new_item.to_sym] = amount
 end  
 
 the_hash
 
end

def remove_item(new_hash)
  
  hash = new_hash
  
  puts "This is your list:"
  puts "#{hash}"
  
  puts "Would you like to delete anything?"
  
  puts "Please enter 'no' or the item:"
  
  delete_item = gets.chomp
  
  if delete_item == "no"
  hash
  else
    hash = hash.delete_if {|key, value| key == delete_item.to_sym}
    hash
  end
  
end

def update_quantity(a_hash)
  hash = a_hash
  
  puts "This is your list:"
  puts "#{hash}"

  puts "Would you like to change the amount of anything?"
  
  puts "Please enter 'no' or the item:"

  item = gets.chomp
  
    if item == "no"
      hash
    else
    puts "Please enter the new amount:"

    amount = gets.chomp

      hash[item.to_sym] = amount

      hash
    end
end

def print_method(a_hash)
  puts "Your items are:"
  
  puts #line break

  a_hash.each do |key, value|
    puts "#{key}: #{value}"
  end
end

print_method(update_quantity(remove_item(add_item(create_list))))