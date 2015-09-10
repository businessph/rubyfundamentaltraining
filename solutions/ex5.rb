countriesAndCitiesArr = [ 
    ["USA","SF","LA"],
    ["Israel","Jerusalem","Tel Aviv"],
    ["England","London","Leeds","Machaster"]
]

puts "\n*** Inspecting ***"
p(countriesAndCitiesArr)

puts "\n*** Countries ***"

for subArr in countriesAndCitiesArr
  puts subArr[0] 
end

puts( "\n*** Cities ***")
for (a,b,c,d) in countriesAndCitiesArr
  print " #{b} #{c} #{d}\n" 
end

countriesAndCitiesArr[0][0] = "United States of America"
puts "\n*** Inspecting ***"
p(countriesAndCitiesArr)

