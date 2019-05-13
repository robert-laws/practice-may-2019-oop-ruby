require_relative 'email'

class Animal
  attr_accessor :name, :legs

  def initialize(name, legs)
    @name = name
    @legs = legs
  end

  def say_hello
    "from #{self.name}"
  end
end

class Cat < Animal
  attr_accessor :fur_type
  
  def initialize(name, legs, fur_type) # overriding initialize, but accessing parent method via super
    super(name, legs)
    @fur_type = fur_type
  end

  def say_hello
    "Meow #{super}"
  end
end

class Human < Animal
  include Email

  def say_hello
    "Hello #{super}"
  end
end

c = Cat.new("Felix", "Four", "Short Haired")
p c.name
p c.say_hello

h = Human.new("Bob", "Two")
p h.name
p h.say_hello
p h.send_email