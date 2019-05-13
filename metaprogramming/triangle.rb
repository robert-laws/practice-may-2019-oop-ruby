class TriangleError < StandardError
  def message
    "Error: The triangle is invalid"
  end
end

class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if(validate_triangle)
      if (self.side_one == self.side_two && self.side_two == self.side_three)
        :equilateral
      elsif(self.side_one == self.side_two || self.side_two == self.side_three || self.side_one == self.side_three)
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      rescue TriangleError => exception
        exception.message
      end
    end
  end

  def validate_triangle
    if (self.side_one + self.side_two <= self.side_three) || (self.side_one + self.side_three <= self.side_two) || (self.side_two + self.side_three <= self.side_one)      
      false
    else
      true
    end
  end
end

t = Triangle.new(4, 6, 1)
p t.kind

t2 = Triangle.new(7, 2, 1)
p t2.kind

t3 = Triangle.new(5, 45, 5)
p t3.kind

t4 = Triangle.new(2, 6, 18)
p t4.kind