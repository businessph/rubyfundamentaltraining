
### getUserInfo
def getUserInfo

  ###output 1
  ### desiredWeight
  print "Enter desired weight as a decimal number:   "
  desiredWeight = gets.to_f.round(2)

  ###output 2
  ### productName
  print "Enter product name: "
  productName = gets.chomp

  ### cost
  cost = desiredWeight * 4.5 ###cost per pound

  ###output 3
  ### print line
  print "Yor ordered #{desiredWeight} of #{productName} for the cost of #{cost.to_f.round(2)}"

  ### These are the same
  ### printf("%.2f", cost)
  ### print cost.to_f.round(2)

  ###output 4
  ### updateOrder, external method, puts method that gets returned
  puts "\n" + updateOrder(cost)
  #puts "\n" + (updateOrder cost) - parenthesis needed for precedence surrounding the method call or the parameter

  end

###string from getUserInfo gets put into this method and multiplies it by ten
def updateOrder(theCost)
  return "Thanks for ordering - the revised cost is $#{theCost*10}"
end

### run first method
getUserInfo

###########################

def strong_enough(earthquake, age)

  strength = 1000 * (0.99 ** age)
  s = 1
  sum = 0

  for x in earthquake
    for y in x
      sum += y
    end
    s = s * sum
    sum = 0
  end

  if s > strength
    return "Needs Reinforcement!"
  else
    return "Safe!"
  end

end

##########################