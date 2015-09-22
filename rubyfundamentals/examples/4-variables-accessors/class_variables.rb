
# new topic: class variables

    class Vehicle

        attr_reader :color
        attr_accessor :description
        @@total_vehicles = 0 # class variable
      
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
      ###empty cl ass just for Air plane to in
    end

  car1   = Car.new("blue", "coup","automatic")
  car2   = Car.new("green", "sedan", "manual")
  plane1 = Airplane.new("silver", "747")
  plane2 = Airplane.new("maroon", "helicopter")
  plane3 = Airplane.new("light blue", "two-seater")

  puts
  p(car1)
  puts
  p(car2)
  puts
  p(plane1)
  puts
  p(plane2)
  puts
  p(plane3)

  puts
  puts "First car color1=#{car1.color}, description=#{car1.description}, transmission=#{car1.transmission}"  + "\n"

  puts
  puts  "Number of airplane and car instances: "
  puts( "#{car1.return_number_of_instances}" )
  puts( "#{plane3.return_number_of_instances}" )
