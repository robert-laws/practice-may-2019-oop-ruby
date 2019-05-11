class Dog
  attr_reader :name, :size, :temperament
  def initialize(name, size, temperament)
    @name = name
    @size = size
    @temperament = temperament
  end

  def bark
    if quiet?
      puts "#{name}, the #{size} dog, says rf"
    else
      puts "#{name}, the #{size} dog, says RUFF!"
    end
  end

  def quiet?
    temperament == 'quiet'
  end
end

class Owner
  attr_reader :name, :dogs

  def initialize(name)
    @name = name
    @dogs = []
  end

  def add_dog(dog)
    @dogs << dog
  end
end

o = Owner.new("Bob")
d = Dog.new("Fido", "small", "active")
d2 = Dog.new("Spot", "medium", "quiet")
o.add_dog(d)
o.add_dog(d2)
o.dogs.each {|dog| p dog.name }