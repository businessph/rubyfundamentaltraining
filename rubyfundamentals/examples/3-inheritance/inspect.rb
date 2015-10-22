class Car

      def initialize(col, descrip)
        @color        = col
        @description  = descrip
      end

end

obj1 = "Are you warming up to Ruby?"
obj2 = 2468
obj3 = Car.new("color string", "description string")
obj4 = "Are you warming up to Ruby?"

###what is the difference between p(obj1) and obj1.inspect
puts  ###new line
p(obj1)
puts  ###new line
p(obj2)
puts  ###new line
p(obj3)

puts  ###new line
puts "\n" + obj1.inspect
puts "\n" + obj2.inspect
puts "\n" + obj3.inspect

puts  ###new line
puts obj1 == obj1
puts obj1 == obj2
puts obj1 == obj4
