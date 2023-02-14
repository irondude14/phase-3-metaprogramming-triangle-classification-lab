class Triangle

    attr_accessor :equilateral, :isosceles, :scalene

    def initialize(a, b, c)
      @a=a
      @b=b
      @c=c
    end

    def kind
      if (@a >= 0 && @b >= 0 && @c >= 0) && ((@a+@b) > @c && (@c+@b) > @a && (@a+@c) > @b)   
        if @a==@b && @a==@c
          :equilateral
        elsif @a==@b || @c==@b || @a==@c
          :isosceles  
        elsif @a!=@b && @a!=@c
          :scalene 
        end
      else 
        raise TriangleError    
      end
    end

    class TriangleError < StandardError
    end

end
