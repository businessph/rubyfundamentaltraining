# reading and writing attributes using:
# attr-reader, attr_writer, attr_accessor
###put no github

    class Vehicle      
			    
      attr_accessor :description 
      attr_writer :color
      
      def initialize(col, descrip)            
        @color         = col
        @description  = descrip
      end
      
      # get accessor for @color
      def color
		    return @color.capitalize
      end

      # been replaced by attr_writer
      #     def color=(col)
      #				@color = col
      #     end
	  end      
 
    
    class Car < Vehicle      # Car inherits from Vehicle
      attr_accessor :transmission
      
      def initialize col, descrip, trans 
          super col, descrip 
          @transmission = trans
      end                
    end
    
  car1 = Car.new("purple", "has moon-roof", "manual")
  car2 = Car.new("black", "leather interior","automatic")  
  car2.transmission = "manual"
  
  puts "First car color=#{car1.color}, description=#{car1.description}, transmission=#{car1.transmission}"
  
  car1.transmission= "automatic"
  
  car1.description << " (however, it leaks when raining)" 
  
  puts "First car color=#{car1.color}, description=#{car1.description}, transmission=#{car1.transmission}"

  puts "\nFirst car: #{car1.inspect}"
  puts "Second car: "  + car2.inspect
