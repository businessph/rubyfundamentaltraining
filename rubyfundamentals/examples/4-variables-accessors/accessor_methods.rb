# instance variables and accessor methods
   
class Vehicle

  ### set accessor for @color
  def color= col
    @color = col
  end

  ### get accessor for @color
   def color
      @color
   end

end  
  
vehicle = Vehicle.new 



vehicle.color = "blue"

puts  vehicle.color  
# or using ()
vehicle.color=("pink") 
puts  vehicle.color 


