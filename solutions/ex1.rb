
### getUserInfo
def getUserInfo

  ### desiredWeight
  print "Enter desired weight as a decimal number:   "
  desiredWeight = gets.to_f.round(2)

  ### productName
  print "Enter product name: "
  productName = gets.chomp

  ### cost
  cost = desiredWeight * 4.5 #cost per pound

  ### print line
  print "Yor ordered #{desiredWeight} of #{productName} for the cost of "
  print cost.to_f.round(2)

  ###These are the same
  ### printf("%.2f", cost)
  ### print cost.to_f.round(2)

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

