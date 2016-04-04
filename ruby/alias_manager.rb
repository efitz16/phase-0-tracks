# Pseudocode
# Release 0
# 

names = {
	real_name: [],
	the_alias: []
}

puts "Would you like to play (y/n)?"
ans = gets.chomp

while ans != "no" || ans != "n"
	puts "Give me a full name:"

	name = gets.chomp
	if name == "quit"
		t = 0
		while t < names[:real_name].length
			puts "#{names[:real_name][t]} is #{names[:the_alias][t]}"
			t += 1
		end
		abort("Thanks for playing!")
	else
		names[:real_name] << name

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
				spy_name[count] = "aeioua"[i+1]
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

		names[:the_alias] << spy_name
	end
end
exit