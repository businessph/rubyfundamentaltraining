### instance variables and accessor methods
class Vehicle

  ### SET accessor for @color
  def color= col
    @color = col
  end

  ### GET accessor for @color
   def color
      @color
   end

end  

### create a new vehicle
vehicle = Vehicle.new

puts
### make vehicle color blue
vehicle.color = "blue"
### display vehicle color
puts vehicle.color

puts
#### make vehicle color or using ()
vehicle.color=("pink")
### display vehicle color
puts vehicle.color


