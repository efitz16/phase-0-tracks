def example
	puts "This is before the block." 
	yield("Jeff", "Elizabeth")
	puts "After the block is called."
end

example {|x, y| puts "#{x} is the first gopher, #{y} is the second gopher!"}