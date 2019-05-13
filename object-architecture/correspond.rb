require_relative 'letter'

class Correspond
  include Letter::InstanceMethods
  include Letter::ClassMethods
  extend Letter::ClassMethods
  
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def write_a_letter
    self.send_letter
  end
end

c = Correspond.new("Bob")
p c.write_a_letter

5.times{ Correspond.send_new_letter }
7.times{ c.send_new_letter }
p Correspond.letter_count