class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a,b,c)
      @a = a
      @b = b
      @c = c      
    end

    # def a
    #   @a
    # end
  
  def kind
    validate
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
    
  end

  def validate
    if !a.positive? || !b.positive? || !c.positive? || !(a + b > c) || !(b+c>a) || !(a+c>b)
    raise TriangleError 
    end
  end


  class TriangleError < StandardError
  end


end
