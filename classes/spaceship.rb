class Spaceship
  # class variable
  @@toughness = 1

  # instance variables
  attr_accessor :call_sign
  attr_reader :shield_strength

  def initialize(call_sign_value = "The nameless ship")
    @call_sign = call_sign_value
    @shield_strength = 5
  end

  # methods
  def fire_missile
    "Pew!"
  end

  def reduce_shield(amount)
    @shield_strength -= amount
  end

  def self.toughness
    @@toughness
  end
end

s1 = Spaceship.new("the fun ship")
s2 = Spaceship.new

p s1
p s2

p Spaceship.toughness