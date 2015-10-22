### working with numbers – notice local and global variables

###tax rate
tax_rate = 0.0925

### 1 ask what the price is
print "Enter price as a decimal number: "
###global variable gets what the input price is
$input_decimal = gets.chomp.to_f

###if input price is less than zero make input price equal to zero
if
  $input_decimal < 0.0 ###less than zero
then
  $input_decimal = 0.0
end

###global variable input pay_tax equal to input price times tax rate
###global variable $pay_tax
###global variable $input_decimal
###local variable tax_rate

$pay_tax = $input_decimal * tax_rate

### 2 actual real numbers
puts
puts "Tax1 on $#{$input_decimal} is $#{$pay_tax}, so grand total is $#{$input_decimal+$pay_tax} phtest #{tax_rate}"

puts
### 3 this is one line, formatted numbers
print "Tax2 on $#{$input_decimal.round 2}"
printf(" is $%.2f", $pay_tax)
printf(", so grand total is $%.2f", $input_decimal+$pay_tax)
puts "The grand total is #{decimal_number}"
print "phtest #{tax_rate}"
printf("phtest", tax_rate)

puts
###function definition  - the 3 lines above are the body of this function
def calcAndDisplay name
  print "\n#{name}, tax on $#{$input_decimal.round 2}"
  printf(" is $%.2f",$pay_tax)
  printf(", so grand total is $%.2f",$input_decimal+$pay_tax)
end

def calcAndDisplay2 name2
  puts "#{name2}" + ", Tax1 on $#{$input_decimal} is $#{$pay_tax}, so grand total is $#{$input_decimal+$pay_tax}"
end

puts
print "\nPlease enter your first name: "
firstName = gets.chomp

puts
#function call
calcAndDisplay firstName

puts
print "\nPlease enter your last name: "
parse = gets.chomp

calcAndDisplay2 parse


