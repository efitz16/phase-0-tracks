=begin

pseudocode

- method to create list
  - input: string
  - list = hash?
  - item = key; quantity = value
  - make item into symbol
  - output: hash whose keys are items from string broken up, values are default to one
  - break 
- method add items to hash
  - accept create list method as argument
    - input from other method: created hash with original items as keys & default value
  - input from user item & quantity
  - use IF/ELSE statement to ask user if wants to proceed with this step
  - use LOOP method UNTIL stop signal entered
  - output: updated hash with new items and quantities
- method to remove item from list
  - accept add items method as argument 
    - input: hash so far
  - input from user: items want to remove
  - use IF/ELSE statement to ask user if wants to proceed with this step
  - use special ruby method for deleting key & value using key as search
  - output: updated hash w/ item removed
- method to change quantites
  - accept remove item method as argument
    - input: hash so far
  - input from user: key whose quantity you want to change and new quantity
  - use IF/ELSE statement to ask user if wants to proceed with this step
  - set amount to key, overriding old value
  - output: updated list with updated quantity
- print list
  - accept completed hash as input
  - print hash & format it nicely, i.e. print out full sentences, saying key is your item and value is the amount of that item
  
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

=begin
  
What did you learn about pseudocode from working on this challenge?

Honestly, I learned that I still don't really like pseudocoding that much, but that I should get used to it.

What are the tradeoffs of using arrays and hashes for this challenge?

Arrays and hashes can definitely make information easier to store and group, but it can be tricky to learn the syntax for creating, manipulating, and interacting with them

What does a method return?

In Ruby, a method returns the last evaluated expression.

What kind of things can you pass into methods as arguments?

Methods can accept all manner of data types (strings, integers, floats, etc.) and other methods.

How can you pass information between methods?

To pass information between methods, you can pass a method into another method as a parameter. Just be aware of what
  the method being passed in returns and thus what the input into the method being called is.

What concepts were solidified in this challenge, and what concepts are still confusing?

In this challenge, I think I furthered my understanding of .each, as well as filling hashes. I also learned about methods calling 
  other methods and double-checking your method input/outputs. I think I need a bit more practice on methods and methods-as-arguments.
  
= end