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

  ###1
  puts ### this displays car1, color, description, and transmission
  puts "First car color1=#{car1.color}, description=#{car1.description}, transmission=#{car1.transmission}"

  ###2
  car1.transmission= "automatic"                          ### this changes car1's transmission from manual to automatic
  car1.description << " (however, it leaks when raining)" ### this adds to car1's description
  puts  ### this displays car1, color, description, and transmission
  puts "First car color2=#{car1.color}, description=#{car1.description}, transmission=#{car1.transmission}"

  ###3
  puts
  puts "\nFirst car3: #{car1.inspect}"  ### uses #{}

  ###4
  puts
  puts "Second car4: "  + car2.inspect  ### does not use #{}
