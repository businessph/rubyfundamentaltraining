# working with numbers – notice local and global variables

tax_rate = 0.0925
print "Enter price as a decimal number: "

$input_decimal = gets.chomp.to_f   
if $input_decimal < 0.0 then
  $input_decimal = 0.0 
end

$pay_tax = $input_decimal * tax_rate

puts "Tax on $#{$input_decimal} is $#{$pay_tax}, so grand total is $#{$input_decimal+$pay_tax}"

print "Tax on $#{$input_decimal.round 2 }"
printf(" is $%.2f",$pay_tax)
printf(", so grand total is $%.2f",$input_decimal+$pay_tax)

#function definition  - the 3 lines above are the body of this function
def calcAndDisplay name
  print "\n#{name}, tax on $#{$input_decimal.round 2 }"
  printf(" is $%.2f",$pay_tax)
  printf(", so grand total is $%.2f",$input_decimal+$pay_tax)
end

print "\nPlease enter your first name: "
firstName = gets.chomp

#function call
calcAndDisplay  firstName




