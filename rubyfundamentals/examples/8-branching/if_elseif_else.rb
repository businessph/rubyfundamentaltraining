#
#
#
# input = '' ###input is empty string
#
# puts "How much would you like to earn per day? " ###put text on console
#
# while input != 'quit' do ### while input variable value is not equal to quit do the following
#
#   print "\nEnter a number between 1 and 1000 (or 'quit'): " ### print line take input
#   input = gets.chomp ###get input from print
#
#   if input == 'quit' ### if the gets input is equal to quit
#     puts "Have a good day!" ### put blah blah blah
#   elsif input.to_i > 900 and  input.to_i <= 1000 ###else if input to integer is greater than 900 and input to integer is less than or equal to 1000
#     puts "That's a high rate of pay!" ###put blah blah blah
#   elsif input.to_i <= 900 and input.to_i > 0 ### else if input to integer is less than or equal to 900 and input to integer is greater than 0
#     puts "Good! our company can afford that" ### put blah blah blah
#   else
#     puts "try again" ### else put blah blah blah
#   end
#
# end





input = '' ###input is empty string

puts "How much would you like to earn per hour? " ###put text on console

while input != 'quit' do ### while input variable value is not equal to quit do the following

  print "\nEnter hourly rate (or 'quit'): " ### print line take input
  input = gets.downcase.chomp ###get input from print

  if input == 'quit' ### if the gets input is equal to quit
    puts "Have a great day!" ### put blah blah blah
  elsif input.to_i > 900 and  input.to_i <= 1000 ###else if input to integer is greater than 900 and input to integer is less than or equal to 1000
    puts "That's ridiculously high!" ###put blah blah blah
  elsif input.to_i <= 900 and input.to_i > 800 ### else if input to integer is less than or equal to 900 and input to integer is greater than 0
    puts "Good! Our company can afford that." ### put blah blah blah
  elsif input.to_i <= 800 ### else if input to integer is less than or equal to 900 and input to integer is greater than 0
    puts "Our company is getting a good deal on you buddy." ### put blah blah blah
  elsif input.to_i <= 100000000000 and input.to_i >= 1000
    puts "The sky is the limit."
  elsif input.to_i >= 100000000000
    puts "You should consider playing the lottery.  Go get a fortune cookie my friend."
  else
    puts "try again" ### else put blah blah blah
  end

end


