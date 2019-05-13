require_relative 'email'

class Communication
  extend Email

  attr_accessor :communication_type

  def initialize(type)
    @communication_type = type
  end
end


c = Communication.new("email")
p Communication.email_count