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

snacks.each do |snack|
	puts "We have #{snack} to eat."
end

snacks_status.each do |snack, status|
	puts "The #{snack} were #{status}."
end

