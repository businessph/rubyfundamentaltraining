# @class_ins_var = "class instance variable value"       ###used in one instance only
# @@class_var = "class variable value" #class  variable, ###used in all instances

### what would you do first?  write(set), read(get), access(set and get)

class Worker
  attr_writer :phtest_writer ###set
  attr_reader :name          ###get
  attr_accessor :phone       ###set and get
  @@totalInstances = 0       ###global class variable

  ###            set          , get , set and get
  def initialize(phtest_writer, name, phone)
    @phtest_writer = phtest_writer           ### set
    @name = name                             ### get
    @phone = phone                           ### set and get
    @@totalInstances += 1 ### global variable
  end

  ### reader name is a get, we need a set method
  def name=(name)
    @name = name.capitalize
  end

  ### phtest_writer is a set, we need a get method
  def return_phtest_writer
    return @phtest_writer
  end

  ### independent method in class 
  def work_tool(tool)### set and get
    @tool = tool
    puts "#{@name} works using a #{@tool} #{return_phtest_writer}"
  end

  ###over write to_s method
  def to_s   ### return all parameters
    return "#{@name} uses a #{@tool} #{return_phtest_writer} and can be reached at email: #{@email} or phone: #{@phone} and the total number of all state changes was #{@@totalInstances} workers"
  end

end

class Instructor < Worker  ###inherit from Worker class
  
  attr_writer :email       ###get
  
  def initialize(name, phone, phtest_writer, email) ### init all
     super(name, phone, phtest_writer)              ### add from super class
     @email = email  
  end
  
end

class Doctor < Worker     ###inherit from Doctor class

  attr_writer :email      ###get
  
  def initialize(name, phone, phtest_writer, email)   ### init all
     super(name, phone, phtest_writer)                ### add from super class
     @email = email
  end
    
end

rubyInstructor = Instructor.new("Helen", "415-657-4444", "phtestwriter", "e@d.edu")
familyDoctor = Doctor.new("Joseph", "415-201-3344", "phtestwriter", "g@k.com" )

puts"\n*** Working ***"
puts rubyInstructor.work_tool("marker")
puts familyDoctor.work_tool("stethoscope")

rubyInstructor.email = "prof@school.edu"
familyDoctor.email = "doc@hospital.org" 

puts"\n*** Result of the overriding to_s ***" ###this automatically gets printed because it is in the worker class, return
puts rubyInstructor
puts familyDoctor

rubyInstructor.name = "helena"
familyDoctor.name = "joe"

rubyInstructor.phtest_writer = "phtestwriterhelena"
familyDoctor.phtest_writer = "phtestwriterjoe"

puts "\n*** Inspecting ***"
p(rubyInstructor)
p(familyDoctor)

#long way
class Example
  ###set
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end
  ###get
  def item_name
    @item_name
  end
  ###get
  def quantity
    @quantity
  end
end

example1 = Example.new("TV",2)
puts example1.item_name
puts example1.quantity

#short way
class Item

  attr_reader :item_name, :quantity

  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end

  ###you don't need this anymore because of attr_reader
  # ###get
  # def item_name
  #   @item_name
  # end
  # ###get
  # def quantity
  #   @quantity
  # end

end

item1 = Item.new("TV",2)
puts item1.item_name
puts item1.quantity

