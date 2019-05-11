require 'pry'

class Person
  attr_reader :name

  def name=(name)
    if name =~ /\A-?\d+\Z/
      raise ArgumentError.new("Name must be letters")
    end
    @name = name
  end
  
  def initialize(name)
    self.name = name
  end
end

def new_person
  puts "Enter a name: "
  my_name = gets.chomp
  begin
    # binding.pry
    p = Person.new(my_name)
  rescue ArgumentError => exception
    puts "Error: #{exception.message}."
    new_person
  end
  puts "My name is #{p.name}."
end

new_person