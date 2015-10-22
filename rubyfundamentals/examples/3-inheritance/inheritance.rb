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
       @description
     end

end      
      
class Car < Vehicle  ### Car inherits from extends Vehicle

      def initialize(col, descrip, trans)  ### add what you want from super, Car inherits from extends Vehicle
        super(col, descrip)                ### add what you want from super, Car inherits from extends Vehicle
        @transmission = trans              ### add what you want from current/sub
      end

      def set_transmission(trans)
        @transmission = trans
      end

      def get_transmission
        return @transmission
      end

end

  puts  ###new line ###vehicle class
  vehicle1 = Vehicle.new(' greyblue',' 2009 mazdaspeed3')    ### space in the string1, from initalize def ### default set
  puts "Car color=#{vehicle1.get_color}, description=#{vehicle1.get_description}"

  puts  ###new line ###set
  vehicle1.set_color("burple")                               ### update default set
  vehicle1.set_description("give a new description please")  ### update default set
  puts "Car color = #{vehicle1.get_color}, description = #{vehicle1.get_description}" ### space in the string2

  puts  ###new line
  vehicle1.set_color('hot pink')
  vehicle1.set_description('amazingly smooth ride')
  puts "\nCar after Modifications: color = #{vehicle1.get_color}, description = #{vehicle1.get_description}}"

  puts  ###new line ### car class
  car1 = Car.new("yellow", "coup", "manual")
  puts "Car color = #{car1.get_color}, description = #{car1.get_description}, transmission = #{car1.get_transmission}"

  puts  ###new line
  car1.set_color("yellowstorm")
  car1.set_description("Has seen better times")
  car1.set_transmission("automatic")

  puts "\nCar after Modifications: color = #{car1.get_color}, description = #{car1.get_description}, transmission = #{car1.get_transmission}"

