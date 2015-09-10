 def getUserInfo
    
    print "Enter product name: " 
    productName = gets.chomp

    print "Enter desired weight as adecimal number:   "
    desiredWeight = gets.to_f.round(2)  
    
    cost = desiredWeight * 4.5 #cost per pound
    
    print "Yor ordered #{desiredWeight} of #{productName} for the cost of "
    printf("%.2f" , cost)  
     
    puts "\n" + updateOrder(cost)
    
    #puts "\n" + (updateOrder cost) - parenthesis needed for precedance surronding the method call or the parameter
    
    
  end
  
  def updateOrder(theCost) 
    return "Thanks for ordering - the revised cost is $#{theCost*10}" 
  end
  


  getUserInfo

