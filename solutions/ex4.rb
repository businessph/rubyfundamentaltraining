class Worker   
  
  attr_reader :name     ###get
  attr_accessor :phone  ###set and get
  @@totalInstances = 0    ###global variable
  
  def initialize(name, phone)
    @name = name
    @phone = phone
    @@totalInstances += 1 ### global variable
  end
   
  def name=(name)           ### set
    @name = name.capitalize
  end 
  
  def work_tool(tool)### set and get
    @tool = tool
    puts "#{@name} works using a #{@tool}"
  end
  
  def to_s   ### return all parameters
    return "#{@name} uses a #{@tool} and can be reached at email: #{@email} or phone: #{@phone} and the total number of all state changes was #{@@totalInstances} workers"
  end

end

class Instructor < Worker  ###inherit from Worker class
  
  attr_writer :email       ###get
  
  def initialize(name, phone, email) ### init all
     super(name, phone)              ### add from super class
     @email = email  
  end
  
end

class Doctor < Worker     ###inherit from Doctor class

  attr_writer :email      ###get
  
  def initialize(name, phone, email)   ### init all
     super(name, phone)                ### add from super class
     @email = email
  end
    
end

rubyInstructor = Instructor.new("Helen", "415-657-4444", "e@d.edu")
familyDoctor = Doctor.new("Joseph", "415-201-3344", "g@k.com" )  

puts"\n*** Working ***"
puts rubyInstructor.work_tool("marker")
puts familyDoctor.work_tool("stethoscope")

rubyInstructor.email = "prof@school.edu"
familyDoctor.email = "doc@hospital.org" 

puts"\n*** Result of the overriding to_s ***"
puts rubyInstructor
puts familyDoctor

rubyInstructor.name = "helena"
familyDoctor.name = "joe"

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

