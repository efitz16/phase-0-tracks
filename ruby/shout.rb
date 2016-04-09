=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "!" + " :D"
  end
end

p Shout.yell_angrily("I hate apples")

p Shout.yelling_happily("I won the lottery")
=end

module Shout
	def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + "!" + " :D"
  end
end

class Child
	include Shout
end

class Drill_sergeant
	include Shout
end

child = Child.new

p child.yell_angrily("I fell down")
p child.yelling_happily("It's my birthday")

puts # line break

a_drill_sergeant = Drill_sergeant.new

p a_drill_sergeant.yell_angrily("You're a failure")
p a_drill_sergeant.yelling_happily("You performed well")