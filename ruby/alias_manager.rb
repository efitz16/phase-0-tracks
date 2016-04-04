# pseudocode
# 
puts "Would you like to play?"
puts "Type 'quit' to say no or end the program."
ans = gets.chomp

while ans != "quit"
	puts "Give me a full name:"

	name = gets.chomp
	if name == "quit"
		abort("Thanks for playing!")
	else
		name = name.split(' ').reverse
		
		#p name
		
		z = 0
		
		while z < name.length
			name[z] = name[z].split(' ')
			z += 1
		end
		
		#p name
		
		p name = name.join(' ')
		
		#p name
		
		count = 0
		
		spy_name = ""
		
		j = name.index(" ")
		
		name.downcase!
		
		while count < name.length
			if name[count] == "a" || name[count] == "e" || name[count] == "i" || name[count] 	== 	"o" || name[count] == "u"
				i = "aeiou".index(name[count])
				spy_name[count] = "aeiou"[i+1]
			elsif name[count] == " "
				spy_name[count] = " "
			else
				k = "bcdfghjklmnpqrstvwxyz".index(name[count])
				spy_name[count] = "bcdfghjklmnpqrstvwxyzb"[k+1]
			end
			count += 1
		end
		
		spy_name.capitalize!
		spy_name[j+1] = spy_name[j+1].upcase
		
		puts "Your spy name is:"
		p spy_name
	end
end
exit