# reading and writing multiple attributes

### SET and GET
class Vehicle

      attr_accessor :brand, :id, :owner, :color, :description

end

###create a new vehicle
vehicle = Vehicle.new

vehicle.owner = "Ruven Hannah"
vehicle.color = "silver"
vehicle.brand = "Volvo"
vehicle.id = "CA12345"
vehicle.description = "drives like a race car"

puts
puts("#{vehicle.owner}'s #{vehicle.color} #{vehicle.brand} with id #{vehicle.id} #{vehicle.description}")

