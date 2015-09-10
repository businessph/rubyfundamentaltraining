class Car
      def initialize(col, descrip ) 
        @color         = col
        @description  = descrip
      end
end

obj1 = "Are you warming up to Ruby?"
obj2 = 2468
obj3 = Car.new("gold", "a glittery gold thing") 

p(obj1)  
p(obj2) 
p(obj3)

puts obj3.inspect


