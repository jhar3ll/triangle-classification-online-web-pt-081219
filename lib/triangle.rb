class Triangle
  attr_accessor :side_1, :side_2, :side_3
   
   
   def initialize(side_1, side_2, side_3)
     @side_1 = side_1
     @side_2 = side_2
     @side_3 = side_3
   end 
   
   def kind 
     if side_1 || side_2 || side_3 <= 0 
       begin TriangleError
       rescue TriangleError => error 
       puts error.message
     elsif (side_1 + side_2 <= side_3) || (side_1 + side_3 <= side_2) || (side_2 + side_3 <= side_1)
      begin TriangleError
       rescue TriangleError => error 
       puts error.message
     end 
   end 
   
   class TriangleError < StandardError
     def message
       "This triangle is invalid!"
     end 
   end 
  end
