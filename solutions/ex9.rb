
### -main file needs an external file.  external file needs to be in the same directory/folder as main
require_relative( "ex9_external_module.rb" )

### -main file needs external module
include CalorieMeasurer 

### -create set and get methods for the following
class Breakfast 
  attr_accessor :dish, :price, :calories, :service, :review
end

### -creates new instance of class
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

print "\nhow was the service"
breakfast.service = gets.chomp

print "\nwhat is your overall experience"
breakfast.review = gets.chomp

###
puts "\nBreakfast of an #{breakfast.dish} cost $#{breakfast.price.round(2)}
and I gained #{breakfast.calories} calories 
at the cost of $#{(breakfast.price/breakfast.calories).round(2)} per calorie. 
#{measureCalories(breakfast.calories)} for me." ### module method, pass in breakfast.calories to module method

puts "\nThe service was #{breakfast.service}. My review for this place is #{breakfast.review}."
#The IDE is having syntax-highlighting problems, the Ruby interpreter knows better

