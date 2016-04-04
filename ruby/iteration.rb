#pre-release 1
def example
	puts "This is before the block." 
	yield("Jeff", "Elizabeth")
	puts "After the block is called."
end

example {|x, y| puts "#{x} is the first gopher, #{y} is the second gopher!"}

puts # for line break

#release 1

snacks = ["cookies", "pretzels", "chips", "ice cream"]

snacks_status = {'cookies' => 'eaten', 'pretzels' => 'eaten', 'chips' => 'eaten', 'ice cream' => 'eaten'}

puts "Original data:"
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
p snacks # .map! changes array
puts

# Because .map! changes the data structure, the next two lines are given to re-write arrays so that the documentation exercises (Release 2) work
# Thus, Release 2 is done on the original arrays & hashes we created

snacks = ["cookies", "pretzels", "chips", "ice cream"]

snacks_status = {'cookies' => 'eaten', 'pretzels' => 'eaten', 'chips' => 'eaten', 'ice cream' => 'eaten'}

# Release 2: Hashes

puts "Documents for Hash"

# 2. A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

snacks_status.select {|snack, status| snack.include? "ice"}

# 3. A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

snacks_status.each do |snack, status|
	snacks_status.key('eaten')
end 

# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.

snacks_status.reject {|key, value| key.length < 7}

# 1. A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

snacks_status.delete_if {|snack, status| snack.length <= 6 }


# Release 2: Arrays

puts "Array documentation"

# 1. A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

snacks.delete_if {|snack| snack.length <= 7}

# 2. A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

snacks = ["cookies", "pretzels", "chips", "ice cream"] # re-writes array to return it to original

snacks.select {|snack| snack.length > 5}

# 3. A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

snacks.keep_if {|snack| snack.length < 6}

# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.

snacks = ["cookies", "pretzels", "chips", "ice cream"] # re-writes array to return it to original

snacks.drop_while {|snack| snack.length == 7}

