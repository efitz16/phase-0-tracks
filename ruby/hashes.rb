=begin
	
Pseudocode

	- Promp user for info, including: name, age, number of children, decor theme, sharp edges, and dry-clean only (puts, gets)
	- convert (if want to change value for symbol, change string to symbol with .to_sym)
	- if enter word that's the same as a key, ask & update key's value
		- remember to fill out field that asked for override in!
	- mkesure nil of none enetered
	- print hash out
=end


client = {}

puts "What's the client's name?"

first = gets.chomp
	if first == "none"
		client[:name] == nil
	elsif first == "name" || first == "address" || first == "email" || first == "phone" || first == "age" || first == "children" || first == "decor theme" || first ==
	"fave wood" || first == "sharp edges" || first == "dry clean"
		puts "Please re-enter the #{first} category"
		new = gets.chomp
		category = first
		client[category.to_sym] = new
		puts "Name:"
		client_name = gets.chomp
		client[:name] = client_name
	else
		client[:name] = first
	end

puts "Address:"

second = gets.chomp
	if second == "none"
		client[:address] == nil
	elsif second == "name" || second == "address" || second == "email" || second == "phone" || second == "age" || second == "children" || second ==	"decor theme" || second == "fave wood" || second == "sharp edges" || second == "dry clean"
		puts "Please re-enter the #{second} category"
		new = gets.chomp
		category = second
		client[category.to_sym] = new
		puts "Address:"
		lives = gets.chomp
		client[:address] = lives
	else
		client[:address] = second
	end

puts "Email:"

third = gets.chomp
	if third == "none"
		client[:email] == nil
	elsif third == "name" || third == "address" || third == "email" || third == "phone" || third == "age" || third == "children" || third == "decor theme" || third == "fave wood" || third == "sharp edges" || third == "dry clean"
		puts "Please re-enter the #{third} category"
		new = gets.chomp
		category = third
		client[category.to_sym] = new
		puts "Email:"
		CLIENTEMAIL = gets.chomp
		client[:email] = CLIENTEMAIL
	else
		client[:email] = third
	end
	
puts "Phone:"

fourth = gets.chomp
	if fourth == "none"
		client[:phone] == nil
	elsif fourth == "name" || fourth == "address" || fourth == "email" || fourth == "phone" || fourth == "age" || fourth == "children" || fourth ==	"decor theme" || fourth == "fave wood" || fourth == "sharp edges" || fourth == "dry clean"
		puts "Please re-enter the #{fourth} category"
		new = gets.chomp
		category = fourth
		client[category.to_sym] = new
		puts "Phone:"
		telephone = gets.chomp
		client[:phone] = telephone
	else
		client[:phone] = fourth
	end
	
puts "Age:"

fifth = gets.chomp
	if fifth == "none"
		client[:age] == nil
	elsif fifth == "name" || fifth == "address" || fifth == "email" || fifth == "phone" || fifth == "age" || fifth == "children" || fifth == "decor theme" || fifth == "fave wood" || fifth == "sharp edges" || fifth == "dry clean"
		puts "Please re-enter the #{fifth} category"
		new = gets.chomp
		category = fifth
		client[category.to_sym] = new
		puts "Age:"
		client_age = gets.chomp
		client[:age] = client_age
	else
		client[:age] = fifth
	end
	
puts "Number of children:"

sixth = gets.chomp
	if sixth == "none"
		client[:children] == nil
	elsif sixth == "name" || sixth == "address" || sixth == "email" || sixth == "phone" || sixth == "age" || sixth == "children" || sixth == "decor theme" || sixth == "fave wood" || sixth == "sharp edges" || sixth == "dry clean"
		puts "Please re-enter the #{sixth} category"
		new = gets.chomp
		category = sixth
		client[category.to_sym] = new
		puts "Number of children:"
		kids = gets.chomp
		client[:children] = kids
	else
		client[:children] = sixth
	end
	
puts "Decor theme:"

seventh = gets.chomp	
	if seventh == "none"
		client[:decor_theme] == nil
	elsif seventh == "name" || seventh == "address" || seventh == "email" || seventh == "phone" || seventh == "age" || seventh == "children" || seventh == "decor theme" || seventh == "fave wood" || seventh == "sharp edges" || seventh == "dry clean"
		puts "Please re-enter the #{seventh} category"
		new = gets.chomp
		category = seventh
		client[category.to_sym] = new
		puts "Decor theme:"
		right_dec = gets.chomp
		client[:decor_theme] = right_dec
	else
		client[:decor_theme] = seventh
	end
	
puts "Favorite wood type:"

eighth = gets.chomp	
	if eighth == "none"
		client[:wood] == nil
	elsif eighth == "name" || eighth == "address" || eighth == "email" || eighth == "phone" || eighth == "age" || eighth == "children" || eighth == "decor theme" || eighth == "fave wood" || eighth == "sharp edges" || eighth == "dry clean"
		puts "Please re-enter the #{eighth} category"
		new = gets.chomp
		category = eighth
		client[category.to_sym] = new
		puts "Favorite wood type:"
		fave_wood = gets.chomp
		client[:wood] = fave_wood
	else
		client[:wood] = eighth
	end
	
puts "Sharp edges tolerance:"

ninth = gets.chomp	
	if ninth == "none"
		client[:edges] == nil
	elsif ninth == "name" || ninth == "address" || ninth == "email" || ninth == "phone" || ninth == "age" || ninth == "children" || ninth == "decor theme" || ninth == "fave wood" || ninth == "sharp edges" || ninth == "dry clean"
		puts "Please re-enter the #{ninth} category"
		new = gets.chomp
		category = ninth
		client[category.to_sym] = new
		puts "Sharp edge tolerance:"
		edges_ok = gets.chomp
		client[:edges] = edges_ok
	else
		client[:edges] = ninth
	end
	
puts "Dry-clean only materials:"

tenth = gets.chomp
	if tenth == "none"
		client[:dry_clean] == nil
	elsif tenth == "name" || tenth == "address" || tenth == "email" || tenth == "phone" || tenth == "age" || tenth == "children" || tenth == "decor theme" || tenth == "fave wood" || tenth == "sharp edges" || tenth == "dry clean"
		puts "Please re-enter the #{tenth} category"
		new = gets.chomp
		category = tenth
		client[category.to_sym] = new
		puts "Dry-clean only materials:"
		dryclean = gets.chomp
		client[:dry_clean] = dryclean
	else
		client[:dry_clean] = tenth
	end

p client