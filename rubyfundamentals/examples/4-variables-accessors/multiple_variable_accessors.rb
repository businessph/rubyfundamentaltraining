# reading and writing multiple attributes


class Vehicle               
      attr_accessor :brand, :id, :owner, :color, :description
      
end      
  
vehicle = Vehicle.new
vehicle.color = "silver"
vehicle.description = "drives like a race car"
vehicle.brand = "Volvo"
vehicle.id = "CA12345"
vehicle.owner = "Ruven Hannah"

puts("#{vehicle.owner}'s #{vehicle.color} #{vehicle.brand} 
with id #{vehicle.id} #{vehicle.description}")
