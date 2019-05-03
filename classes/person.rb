require 'date'

class Person
  attr_accessor :first_name, :last_name
  attr_reader :date

  def initialize(first_name: nil, last_name: nil)
    self.first_name = first_name
    self.last_name = last_name
    @date = Date.today.strftime("%A")
  end

  def greeting
    "Hello, #{first_name} #{last_name}! It's #{date} today."
  end
end