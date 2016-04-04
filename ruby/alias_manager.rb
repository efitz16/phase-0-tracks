# Pseudocode
=begin
	Release 0:
		- Write method definition
			- takes real name entered as argument, so a parameter for a string
			- reverses first + last names
				- .split: splits nameinto 2*
				- .reverse: makes index 1 into 0 and index 0 into 1--last name firat & first name last
				- .split: again, breaks down array into character*
				- .join: joins all characters together*
				*: ' ' to split into words (not characters, so don't reverse characters but switch 1st and last names) & then accomodate space btwn first & last
			- define spy name as empty string
			- downcase: move capital letters to lowercase
			- find index of space in order to make new last name capital (do after reversed!)
			- iterate through whole name
				- if vowel, compare to vowel string
				- if consonant, compare to consonant string
				- if space at index currently iterating through, leave as space
				- store new indecies in spy name string
				---> later four siilar to Challenge 4.6
			- capitalize first in spring
			- capitalize the index after the index where the space is
			- return spy name
		- ask for full name (first + last) [puts "Give.."; name = gets...]
		- call method with name as argument
	Release 1:
		- interface: start with asking if want to play
		- while loop--while want to play (not enetering no)
			- ask for full name: perform release 0
			- if user enters 'quit', exit
	Release 2:
		- create hash "names", with two keys: real name & alias, that each point to an array (later fill arrays with real and spy names)
		- hash goes outside of all loops so not resetting (ie clearing) itself
		- modify method to take another parameter (later pass hash to it)
		- method modifications:
		    - before split or do anything to name, store name in hash, array for orig names
		    - store spy name in hash's key for array for aliases
		- when call method, add another argument--the hash
		- modify if-else
			if user enters quit, before aborting:
				iterate through hash and print out original name & corresponding alias
=end


names = {
		real_name: [],
		the_alias: []
	}

puts "Would you like to play (y/n)?"
ans = gets.chomp

while ans != "no" || ans != "n"
	
	def spy_name_creator(realname, the_hash)

				the_hash[:real_name] << realname 

				realname = realname.split(' ').reverse
				
				#p name
				
				z = 0
				
				while z < realname.length
					realname[z] = realname[z].split(' ')
					z += 1
				end
				
				#p name
				
				realname = realname.join(' ')
				
				#p name
				
				count = 0
				
				spy_name = ""
				
				j = realname.index(" ")
				
				realname.downcase!
				
				while count < realname.length
					if realname[count] == "a" || realname[count] == "e" || realname[count] == "i" || realname[count] 	== 	"o" || realname[count] == "u"
						i = "aeiou".index(realname[count])
						spy_name[count] = "aeioua"[i+1]
					elsif realname[count] == " "
						spy_name[count] = " "
					else
						k = "bcdfghjklmnpqrstvwxyz".index(realname[count])
						spy_name[count] = "bcdfghjklmnpqrstvwxyzb"[k+1]
					end
					count += 1
				end
				
				spy_name.capitalize!
				spy_name[j+1] = spy_name[j+1].upcase
				
				puts "Your spy name is:"
				p spy_name

				the_hash[:the_alias] << spy_name
				
				the_hash
	end
	
	puts "Please give me a full name:"
	puts "Type 'quit' to end program."
	
	name = gets.chomp
	
	if name == "quit"
		t = 0
		while t < names[:real_name].length
			puts "#{names[:real_name][t]} is #{names[:the_alias][t]}"
			t += 1
		end
		abort("Thanks for playing!")
	else
		spy_name_creator(name, names)
	end
end