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

Rover = Puppy.new

Rover.fetch("ball")

Rover.speak(2)

Rover.roll_over
  
Rover.dog_years(5)

Rover.sit