# Virus Predictor

# I worked on this challenge [with: Craig].
# We spent [2.5] hours on this challenge.

# Calls file that's necessary to run this code 
# and completes the program. Basically, it adds files together;
# also makes sure linked code is only included once.
# "Relative": Need name because same directory, not the full path.
require_relative 'state_data'

class VirusPredictor
# Initialize method--thus called when create a new instance of the class; sets instance variables values equal to arguments passed in
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls two methods which are private; thus virus_effects can be accessed outside class definition
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# Using IF/ELSE checks state's density, and thus predicts how many people will die (higher density equals more deaths) by multiplying population by density percentage ****
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Using population density, predicts how quickly virus will spread across state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and it will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do |key, value|
  the_state = VirusPredictor.new(key, value[:population_density], value[:population])
  the_state.virus_effects
end

=begin
=======================================================================
Reflection

- What are the differences between the two different hash syntaxes shown in the state_data file?

In the state_data file, we see two hash syntakes: one using a hash rocket (as between the state and its date), and another using a colon (as in the second hash, where the key is a symbol saying what the type of data is and the value is the numbers). The hash using the hash rocket syntax tells us that the key is a string and its value is itself a hash; inside this hash (which is itself a value), the keys are symbols and the values are integers and floats.

- What does require_relative do? How is it different from require?

The line require_relative includes code from the selected file in the current file, effectively combining them. It differs from require because require_relative refers to a relative path (the current working directory), i.e. allowing you to load a file realtive to the file with the require_relative statement. By contrast, relative works along an absolute path and refers to a certain directory.

- What are some ways to iterate through a hash?

Some ways to iterate through a has include an each statement (using key and value in the block statement), while statements, until statements, and loop do loops.

- When refactoring virus_effects, what stood out to you about the variables, if anything?

In the original virus_effects method, instance varaibles were being passed as arguments into two instance methods, which was unnecessary; because instance variables can be accessed anywherein the class definition, it is accessable in the instance methods, so there is no need to pass them in.

- What concept did you most solidify in this challenge?

This challenge most solidified the concept that I need to study more and review the .each method syntax, especially as it relates to hashes. 
=end