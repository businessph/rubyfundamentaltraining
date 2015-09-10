
# new topic: class variables

    class Vehicle
      
      @@total_vehicles = 0 # class variable
      attr_reader :color
      attr_accessor :description 
      
      def initialize(col, descrip)
        @color = col
        @description = descrip
        @@total_vehicles +=1  
      end
      
      
      def return_number_of_instances
        return "There are #{@@total_vehicles} instances" 
      end
      
    end
    
    
    class Car < Vehicle
      attr_accessor :transmission
      
      def initialize(col, descrip, trans)
          super(col, descrip)
          @transmission = trans
      end
    end
    
    
    class Airplane < Vehicle  
     
    end

       
  car1 = Car.new("blue", "coup","automatic")
  car2 = Car.new("green", "sedan", "manual")

  plane1 = Airplane.new("silver", "747")
  plane2 = Airplane.new("maroon", "helicopter")
  plane3 = Airplane.new("light blue", "two-seater")
  
  p(car1)
  p(plane1)

  puts "\nNumber of airplane and car instances: "
  puts( "#{car1.return_number_of_instances}" )
  puts( "#{plane3.return_number_of_instances}" )
 
