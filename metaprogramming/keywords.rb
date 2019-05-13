class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def information(name: "human being", age: 100)
    "#{name} is now #{age} years old."
  end

  def new_information
    "#{self.name} is now #{self.age} years old."
  end
end

p = Person.new("Bob", 34)
p p.information(age: 23, name: "Hal")
p p.information
p p.new_information

p2 = Person.new("Kal", 53)
p2_details = {name: "Jim", age: 19}
p p2.information(p2_details)