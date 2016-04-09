class Dress
	attr_reader :style
	attr_accessor :color, :length
	
	def initialize(a_style)
		puts "Initializing a new Dress instance..."
		@style = a_style
		@color = ""
		@length = "0"
	end
	
	def wash(dress_color)
		puts "The dress has been washed!"
		
		if dress_color == "white" || dress_color == "White"
			puts "Bleach was used"
		else
			puts "Non-chlorine bleach was used!"
		end
		
		puts "It is now a brighter shade of #{dress_color}"
	end
	
	def swirl
		puts "*swirls*"
	end
	
	def embellish
		puts "How would you like to change this dress?"
		
		puts "To change the hemline, enter '1'. To dye it, enter '2'."
		puts "To do neither, just press enter."
		
		change = gets.chomp
		
		case change
		when "1"
			puts "The current length is #{length} cm."
			puts "Please enter a new length:"
			new_length = gets.chomp
			@length = new_length
			puts "The new length is:"
			puts "#{length} cm"
		when "2"
			puts "Its current color is #{color}."
			puts "Please enter the color you wish to dye it:"
			new_color = gets.chomp
			@color = new_color
			puts "The new color is:"
			puts "#{color}"
		else
			puts "Skipping this step..."
		end
	end
end

#driver code:
new_dress = Dress.new("shift")
new_dress.color = "green"
new_dress.length = 3

p new_dress.color
p new_dress.length
p new_dress.style

new_dress.embellish

p new_dress.color
p new_dress.length
p new_dress.style