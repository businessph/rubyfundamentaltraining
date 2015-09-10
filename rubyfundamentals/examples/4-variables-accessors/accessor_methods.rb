# instance variables and accessor methods
   
class Vehicle 
            
     # get accessor for @color
     def color
        @color
     end

     # set accessor for @color
     def color= col   
        @color = col
      end 
      
end  
  
vehicle = Vehicle.new 

vehicle.color = "blue" 
puts  vehicle.color  
# or using ()
vehicle.color=("pink") 
puts  vehicle.color 


