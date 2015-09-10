# Invoking  the to_s method on classes and objects

class Car
      def initialize(col, descrip) 
        @color         = col
        @description  = descrip
      end
      
      # def to_s # override to_s method
      #      "the #{@color} Car which is a #{@description}\n"
      # end
end


car1 = Car.new("blue", "vehicle in need of body-work") 

print "Object.to_s: "
puts Object

print "\nMath.to_s: "
puts Math

print "\nCar.to_s: "
puts Car

print "\n999.to_s: "
puts 999

print "\ncar1.to_s: "
puts car1 

puts "\nI love driving around in #{car1}"

puts "\n" + car1.to_s


#comment out to_s and run again
