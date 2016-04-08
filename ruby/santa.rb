class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
end

=begin
initialize now takes two arguments; this driver code only works for release 0
Harry = Santa.new

Sam = Santa.new

Irene = Santa.new
=end

=begin
# Example Release 1 gives:
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

p santas #debugging

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas
=end

santas = []

i = 0

a = 1

while i < 2
	SantaConMember_a = Santa.new("female", "Latina")
	santas << SantaConMember_a
	i += 1
	a += 1
end

santas << Santa.new("bigender", "Indian")
santas << Santa.new("female", "black")
santas << Santa.new("male", "white")
santas << Santa.new("genderfluid", "white")

santas << Lisa = Santa.new("agender", "Latin@")

p santas