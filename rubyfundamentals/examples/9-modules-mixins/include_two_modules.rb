# modules included in subclass

module Tax
  TAX_PERCENT = 0.35
  
  attr_accessor :payment_amount
	
end

module Transportation
	attr_accessor :time, :cost
end

class Vehicle
	attr_accessor :color, :description
end

class Car < Vehicle
  include Tax
  include Transportation
  
  attr_accessor :transmission
end

car1 = Car.new
car1.transmission = "manual"
car1.color = "red"
car1.description = "restored classic"
car1.payment_amount = 550.99

car1.time = 4
car1.cost=125


printf "\nGrand total: $%.2f",car1.payment_amount + 
                              car1.payment_amount * Tax::TAX_PERCENT + 
                              car1.time*car1.cost

puts "\n\n"

p car1
