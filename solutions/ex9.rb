puts require_relative( "ex9_external_module.rb" )

###include module CalorieMeasurer from external file
include CalorieMeasurer 

### create set and get methods for the following
class Breakfast 
  attr_accessor :dish, :price, :calories
end

### creates new instance of class
breakfast = Breakfast.new

### print to get, class instance to set, which equals get
print "\nEnter dish: "
breakfast.dish = gets.chomp

### print to get, class instance to set, which equals get
print "\nEnter price: "
breakfast.price = gets.chomp.to_f

### print to get, class instance to set, which equals get
print "\nEnter calories: "
breakfast.calories = gets.chomp.to_i

###
puts "Breakfast of an #{breakfast.dish} cost $#{breakfast.price.round(2)}
and I gained #{breakfast.calories} calories 
at the cost of $#{(breakfast.price/breakfast.calories).round(2)} per calorie. 
#{measureCalories(breakfast.calories)} for me." ### module method, pass in breakfast.calories to module method

#The IDE is having syntax-highlighting problems, the Ruby interpreter knows better

