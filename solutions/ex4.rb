class Worker   
  
  attr_reader :name
  attr_accessor :phone 
  
  @@totalInstances=0
  
  def initialize(name, phone)  
    @name = name
    @phone = phone
    @@totalInstances += 1
  end
   
  def name=(name)   
    @name = name.capitalize
  end 
  
  def work(tool) 
    @tool=tool
    puts "#{@name} works using a #{@tool}"
  end
  
  def to_s
    return "#{@name} uses a #{@tool} and can be reached at  email: #{@email} or phone: #{@phone} and the toal number of all state changes was #{@@totalInstances} workers"
  end  
end

class Instructor < Worker  
  
  attr_writer :email
  
  def initialize(name, phone, email)  
     super(name, phone)   
     @email = email  
  end
  
end


class Doctor < Worker 
  
  attr_writer :email 
  
  def initialize(name, phone, email)  
     super(name, phone)   
     @email = email
  end
    
end


rubyInstrucor = Instructor.new("Helen", "415-657-4444", "e@d.edu") 
familyDoctor = Doctor.new("Joseph", "415-201-3344", "g@k.com" )  

puts"\n*** Working ***"
puts rubyInstrucor.work("marker") 
puts familyDoctor.work("stethoscope") 

rubyInstrucor.email = "prof@school.edu"  
familyDoctor.email = "doc@hospital.org" 

puts"\n*** Result of the overriding to_s ***"
puts rubyInstrucor
puts familyDoctor

rubyInstrucor.name = "helena"
familyDoctor.name = "joe"

puts "\n*** Inspecting ***"
p(rubyInstrucor) 
p(familyDoctor) 


