puts "What is your name?"

name = gets.chomp

puts "What age will you be turning (or have turned) in 2016?"
=begin
Including code that checks to see if the user's birthday has passed and then updating how it should be checked against the year
according to that was problematic because: a. you'd have to ask for birthday, not year of birth; and, b. the code would need to acceptinput for 
what day it is.
=end
age = gets.chomp

age = age.to_i

puts "What year were you born?"

date_of_birth = gets.chomp

date_of_birth = date_of_birth.to_i

garlic_bread = nil

loop do
	puts "Our company cafeteria serves garlic bread. Should we order some for you (y/n)?"
	garlic_bread = gets.chomp
	break if garlic_bread == "y" || garlic_bread == "n"
	puts "Invalid input. Please enter 'y' or 'n'"
end

willing = nil

if garlic_bread == "y"
	garlic_bread = true
elsif garlic_bread == "n"
	garlic_bread = false
	loop do
		puts "Are you willing to eat garlic bread? (y/n)?"
		willing = gets.chomp
		break if willing == "y" || willing == "n"
		puts "Invalid input. Please enter 'y' or 'n'"
	end
end

if willing == "y"
	willing = true
elsif willing == "n"
	willing = false
end

health_insurance = nil

loop do
	puts "Would you like to enroll in the company’s health insurance (y/n)?"
	health_insurance = gets.chomp
	break if health_insurance == "y" || health_insurance == "n"
	puts "Invalid input. Please enter 'y' or 'n'"
end

not_immortal = nil

if health_insurance == "y"
	health_insurance = true
elsif health_insurance == "n"
	health_insurance = false
	loop do
		puts "Are you at least willing to enroll or open to enrolling in the company’s health insurance? (y/n)?"
		not_immortal = gets.chomp
		break if not_immortal == "y" || not_immortal == "n"
		puts "Invalid input. Please enter 'y' or 'n'"
	end
end

if not_immortal == "y"
	not_immortal = true
elsif not_immortal == "n"
	not_immortal = false
end

puts "--------------------------------------"

puts "Name: #{name}"

puts "Age (by end of 2016): #{age}"

puts "Year of birth: #{date_of_birth}"

puts "Wants garlic bread?: "
	if garlic_bread == true
		puts "Yes"
	else
		puts "No"
	end

puts "Wants to enroll in the company’s health insurance: "
	if health_insurance == true
		puts "Yes"
	else
		puts "No"
	end

puts "Vampire?"

if name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire."
elsif (age == 2016-date_of_birth) && (garlic_bread || health_insurance) #=begin|| (willing || not_immortal))=end
	puts "Probably not a vampire."
elsif !(age == 2016-date_of_birth) && ( !garlic_bread || !health_insurance )
	puts "Probably a vampire."
=begin
elsif !(age == 2016-date_of_birth) && ( !willing || not_immortal )
	puts "Probably not a vampire."
elsif !(age == 2016-date_of_birth) && ( willing || !not_immortal )
	puts "Probably not a vampire."
=begin
	
end
elsif !(age == 2016-date_of_birth) && !willing && (health_insurance || not_immortal)
	puts "Probably a vampire."
elsif !(age == 2016-date_of_birth) && !not_immortal && (garlic_bread || willing)
	puts "Probably a vampire."
=end
elsif !(age == 2016-date_of_birth) && !garlic_bread && !health_insurance
	puts "Almost certainly a vampire."
else 
	puts "Results inconclusive."
end

puts "--------------------------------------"