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

	def celebrate_birthday
		@age = @age += 1
	end

	def get_mad_at(reindeer_meat)
		@reindeer_ranking.delete(reindeer_meat)
		@reindeer_ranking.push(reindeer_meat)
		@reindeer_ranking
	end

	def gender
		@gender
	end
	
	def ethnicity
		@ethnicity
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

puts #line break

puts "Whole array:"
p santas

puts

puts "Lisa the santa:"
p Lisa

puts

santas[2].celebrate_birthday
santas[1].get_mad_at("Vixen")

puts "The gender of santa[4]:"

p santas[4].gender

puts

puts "The ethnicity of santa[0]:"

p santas[0].ethnicity

puts

puts "The updated Santa array:"

p santas