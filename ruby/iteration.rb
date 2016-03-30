#pre-release 1
def example
	puts "This is before the block." 
	yield("Jeff", "Elizabeth")
	puts "After the block is called."
end

example {|x, y| puts "#{x} is the first gopher, #{y} is the second gopher!"}

#release 1

snacks = ["cookies", "pretzels", "chips", "ice cream"]

snacks_status = {'cookies' => 'eaten', 'pretzels' => 'eaten', 'chips' => 'eaten', 'ice cream' => 'eaten'}

puts "original data;"
p snacks
p snacks_status
puts

snacks.each do |snack|
	puts "We have #{snack} to eat."
end
puts

snacks_status.each do |snack, status|
	puts "The #{snack} were #{status}."
end
puts 

puts "After each method used."
p snacks
p snacks_status
puts 

snacks.map! do |snack|
	snack = snack + " will be eaten soon."
end
puts 

puts "After .map! called on array."
p snacks
puts


puts "Documents for Hash"

#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

p snacks_status.select {|snack, status| snack.include? "ice"}

#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

snacks_status.each do |snack, status|
	snacks_status.key('eaten')
end 	


#A method that will remove items from a data structure until the condition in the block evaluates to true, then stops.


snacks_status.delete_if {|snack, status| snack.length <= 6 }
p snacks_status
puts

#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

p snacks_status.delete_if {|snack, status| snack.length == 7 }
p snacks_status
puts

puts "Array documentation"
#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

snacks.delete_if {|snack| snack.length <= 7}

#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).


#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

#A method that will remove items from a data structure until the condition in the block evaluates to true, then stops.

#release 2: arrays
snacks = ["cookies", "pretzels", "chips", "ice cream"]

snacks_status = {'cookies' => 'eaten', 'pretzels' => 'eaten', 'chips' => 'eaten', 'ice cream' => 'eaten'}

snacks.each do |snack|
	puts "We have #{snack} to eat."
end

snacks_status.each do |snack, status|
	puts "The #{snack} were #{status}."
end