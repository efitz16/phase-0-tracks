# pseudocode
# 

puts "Give me a real name:"

name = gets.chomp

name = name.split(' ').reverse

p name

z = 0

while z < name.length
	name[z] = name[z].split(' ')
	z += 1
end

p name

p name = name.join(' ')

count = 0

spy_name = ""

while count < name.length
	if name[count] == "a" || name[count] == "e" || name[count] == "i" || name[count] == "o" || name[count] == "u"
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

p spy_name