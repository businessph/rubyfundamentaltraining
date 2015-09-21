### reading and writing attributes using:
### attr-reader, attr_writer, attr_accessor

### accessor = SET and GET
### reader = GET
### writer = SET

  class Vehicle

    attr_writer :color         ### writer = SET
    attr_accessor :description ### accessor = SET and GET

    ### init is using parenthesis
    def initialize(col, descrip)  ### init for color and description
      @color         = col        ### instance variable and local variable
      @description  = descrip     ### instance variable and local variable
    end

    ### get accessor for @color and capitalize
    def color                   ### you need this because GET color because color is a writer SET not ACCESSOR both
      return @color.capitalize
    end

    ### been replaced by attr_writer
    ###     def color=(col)
    ###				@color = col
    ###     end

  end

  class Car < Vehicle      ### Car cl ass inherits from Vehicle cl ass

    attr_accessor :transmission ### accessor = SET and GET

    ### init is not using parenthesis
    def initialize col, descrip, trans   ### init for color, description, transmission
        super col, descrip               ### Car cl ass inherits from Vehicle cl ass, color and description
        @transmission = trans            ### instance variable and local variable
    end
  end

  ### car1 values for col, descrip, and transmission
  car1 = Car.new("purple", "has moon-roof", "manual")

  ### car2 values for col, descrip, and transmission
  car2 = Car.new("black", "leather interior","automatic")

  ### puts
  ### car2.transmission = "manual"
  puts
  puts "First car color=#{car1.color}, description=#{car1.description}, transmission=#{car1.transmission}"

  car1.transmission= "automatic"
  
  car1.description << " (however, it leaks when raining)"

  puts
  puts "First car color=#{car1.color}, description=#{car1.description}, transmission=#{car1.transmission}"

  puts
  puts "\nFirst car: #{car1.inspect}"

  puts 
  puts "Second car: "  + car2.inspect
