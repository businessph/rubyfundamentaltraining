# inheritance

class Vehicle

     def initialize(col, descrip)  
         @color         = col
         @description  = descrip
     end

     def set_color(col)
       @color = col
     end

     def get_color
         return @color
     end

     def set_description(descrip)
       @description = descrip
     end

     def get_description
		     return @description
     end

end      
      
class Car < Vehicle      # Car inherits from extends Vehicle

      def initialize(col, descrip, trans)
        super(col, descrip)
        @transmission = trans
      end

      def set_transmission(trans)
        @transmission = trans
      end

      def get_transmission
		    return @transmission
      end

end

  puts  ###new line

  car1 = Car.new("yellow", "coup", "manual")
   
  puts "Car color=#{car1.get_color}, description=#{car1.get_description}, transmission=#{car1.get_transmission}"
  
  car1.set_transmission("automatic")  
  
  car1.set_description("Has seen better times") 
  
  puts "\nCar after Modifications: color=#{car1.get_color}, description=#{car1.get_description}, transmission=#{car1.get_transmission}"
  