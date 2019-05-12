class Waiter
  @@all = []

  attr_accessor :name, :experience

  def initialize(name, experience)
    @name = name
    @experience = experience
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip = 0)
    Meal.new(self, customer, total, tip)
  end
end

class Customer
  @@all = []

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end  

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip = 0)
    Meal.new(waiter, self, total, tip)
  end
end

class Meal
  @@all = []

  attr_accessor :waiter, :customer, :total, :tip

  def initialize(waiter, customer, total, tip = 0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end

  def self.all
    @@all
  end
end