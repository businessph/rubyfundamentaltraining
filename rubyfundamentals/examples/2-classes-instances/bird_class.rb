### Class, methods, and instance variables

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

### Create instances (objects) of the Bird class no print
my_bird = Bird.new
his_bird = Bird.new
my_other_bird = Bird.new

### Set them names no print
my_bird.set_name('Puccini')  
his_bird.set_name('Verdi')

### display what the bird cl ass is
puts
puts self.class

### display what the birds names are
### Introduce them by name
puts
puts my_bird.get_name
puts
puts his_bird.get_name

### useless, I did not name my_other_bird, If the method does not have a value to return,
puts my_other_bird.get_name # Ruby prints nothing and does not break

### Get them to move. use instance of class, plus add on method/attribute
puts "My name is #{my_bird.get_name} I am a #{my_bird.class} and #{my_bird.move} \n\n"
puts "My name is #{his_bird.get_name} I am a #{his_bird.class} and #{his_bird.move}\n\n"

### self keyword, class and instance of? methods
puts "#{self} is an instance of the class: #{self.class}\n" ###self is the executable in main ###self.class will return object
puts
puts my_bird.class
puts
puts self.instance_of?(Object)



