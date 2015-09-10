# Class, methods, and instance variables


class Bird
   
	def set_name(name)  
    @name = name
  end
  
  def get_name
     return @name
  end
  
  def move
    return 'I\'m flying!'
  end
  
  def nameMyClass
    puts self.class
  end
  
end


# Create instances (objects) of the Bird class

my_bird = Bird.new
his_bird = Bird.new
my_other_bird = Bird.new

# Give them names

my_bird.set_name('Puccini')  
his_bird.set_name('Verdi')


# Introduce them by name

puts my_bird.get_name
puts his_bird.get_name

# If the method does not have a value to return,
puts my_other_bird.get_name # Ruby prints nothing and does not break


# Get them to move

puts "I am a #{his_bird.class} and #{his_bird.move}"
puts "I am a #{my_bird.class} and #{my_bird.move} \n\n"

# self keyword, class and instanceof? methods

puts "#{self} is an instance of the class: #{self.class}\n\n"  

puts my_bird.class

puts self.instance_of?(Object) 



