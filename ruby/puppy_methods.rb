class Puppy
  def initialize
    puts "Initializing new Puppy instance..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(int)
    int.times do
      puts "Woof!"
  end
  end
    
  def roll_over
    puts "*rolls over*"
  end
    
  def dog_years(age)
    dog_age = age*7
    puts "Age: #{dog_age}"
    dog_age
  end
  
  def sit
    puts "*sits*"
  end

end

class Gymnast
  def initialize
    puts "Initializing new Gymnast instance..."
  end
  
  def flip(int)
    int.times do
      puts "Did a flip"
    end
  end
  
  def jump(int)
    puts "Jumped #{int} feet"
  end
end


Rover = Puppy.new

Rover.fetch("ball")

Rover.speak(2)

Rover.roll_over
  
Rover.dog_years(5)

Rover.sit

i = 0

a = 1

gym_tricks = []

while i < 50
  item_a = Gymnast.new
  gym_tricks.push(item_a)
  i += 1
  a += 1
end

# p gym_tricks debugging

gym_tricks.each do |individual|
  individual.flip(2)
  individual.jump(4)
end

# p gym_tricks debugging