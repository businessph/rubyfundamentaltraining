puts require_relative( "ex9_external_module.rb" ) 
include CalorieMeasurer 

class Breakfast 
  attr_accessor :dish, :calories, :price
end


breakfast = Breakfast.new


print "\nEnter dish: "
breakfast.dish = gets.chomp

print "Enter price: "
breakfast.price = gets.chomp.to_f


print "Enter calories: "
breakfast.calories = gets.chomp.to_i



puts "Breakfast of an #{breakfast.dish} cost $#{breakfast.price.round(2)} 
and I gained #{breakfast.calories} calories 
at the cost of $#{(breakfast.price/breakfast.calories).round(2)} per calorie. 
#{measureCalories(breakfast.calories)} for me."


#The IDE is having syntax-highlighting problems, the Ruby interpreter knows better

