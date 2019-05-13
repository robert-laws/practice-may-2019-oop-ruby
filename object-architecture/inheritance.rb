class Animal
  attr_accessor :name, :legs

  def initialize(name, legs)
    @name = name
    @legs = legs
  end
end

class Cat < Animal
  attr_accessor :fur_type
  
  def initialize(name, legs, fur_type) # overriding initialize, but accessing parent method via super
    super(name, legs)
    @fur_type = fur_type
  end
end

class Human < Animal

end

c = Cat.new("Felix", "Four", "Short Haired")
p c.name

h = Human.new("Bob", "Two")
p h.name