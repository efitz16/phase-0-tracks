=begin
pseudocode
propt ("puts "Please enter..."")
Convert: :symbol.to_s or .to_i (what about combos like address or email?)
print hash (p or puts client)
update key


=end

client = {}

puts "What's the client's name?"

client[:name] = gets.chomp

:name.to_s

puts "Address:"

client[:address] = gets.chomp



puts "Email:"

client[:email] = gets.chomp

puts "Phone:"

client[:phone] = gets.chomp

puts "Age:"

client[:age] = gets.chomp

puts "Number of children:"

client[:numchildren] = gets.chomp

puts "Decor theme:"

client[:decortheme] = gets.chomp

puts "Favorite wood type:"

client[:fave_wood] = gets.chomp

puts "Sharp edges tolerance:"

client[:sharp_edges] = gets.chomp

puts "Dry-clean only materials:"

client[:dry_clean] = gets.chomp

p client