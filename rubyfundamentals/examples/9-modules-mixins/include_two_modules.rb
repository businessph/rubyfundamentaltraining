### modules included in subclass

PH_TAX_PERCENT = 0.925 ###Global variable

module Tax
  TAX_PERCENT = 0.35 ###global variable of module
  attr_accessor :payment_amount ### set and get
end

module Transportation
	attr_accessor :time, :cost ### set and get
end

class Vehicle
	attr_accessor :color, :description ### set and get
end

class Car < Vehicle ### inherits super Vehicle class into sub Car class
  include Tax ### include module
  include Transportation  ### include module
  attr_accessor :transmission ### set and get
end

### what is available in Car class, tax_percent, payment_amount, time, cost, color, description, and transmission


car1 = Car.new ###create new instance of car class

car1.transmission = "manual"          ### set
car1.color = "red"                    ### set
car1.description = "restored classic" ### set
car1.payment_amount = 550.99          ### set
car1.time = 4                         ### set
car1.cost = 125                       ### set

printf "\nGrand total: $%.2f",car1.payment_amount +                    ### payment_amount plus
                              car1.payment_amount * Tax::TAX_PERCENT + ### payment_amount times Tax module::Global variable TAX_PERCENT plus
                              car1.time * car1.cost                    ### time times cost = total

printf "\nGrand total: $%.20f",car1.payment_amount + (car1.payment_amount * PH_TAX_PERCENT) + (car1.time * car1.cost)

puts "\n\n"

p car1
