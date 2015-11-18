
countriesAndCitiesArr = [
    ["USA","SF","LA"],
    ["Israel","Jerusalem","Tel Aviv"],
    ["England","London","Leeds","Machaster"]
                          ]

###display whole array
puts "\n*** Inspecting ***"
p(countriesAndCitiesArr)

###display subarr with index of 0
puts "\n*** Countries ***"
for subArr in countriesAndCitiesArr
  puts subArr[0] 
end

###display only b, c, d
puts( "\n*** Cities ***")
for (a,b,c,d) in countriesAndCitiesArr
  print " #{b} #{c} #{d}\n" 
end

### add this to first sub array, first position of sub array
countriesAndCitiesArr[0][0] = "United States of America"
puts "\n*** Inspecting ***"
p(countriesAndCitiesArr)
