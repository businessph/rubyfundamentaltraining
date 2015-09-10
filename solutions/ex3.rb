class Worker   
  def initialize(name)  
    @name = name
  end
   
  def set_name(name)   
    @name = name
  end 
  
  def get_name
    return @name 
  end 
  
def work(tool) 
    @tool=tool
    puts "#{@name} works using a #{@tool}"
  end
  
  def to_s
    return "#{@name} uses a #{@tool} and can be reached at  email: #{@eMail}"
  end  
end

class Instructor < Worker  
  def initialize(name, email)  
     super  name 
     @eMail = email
  end
  
  def set_email(email)   
    @eMail = email
  end  
end


class Doctor < Worker  
  def initialize(name, email)  
     super name 
     @eMail = email
  end
  def set_email(email)   
    @eMail = email
  end  
end


rubyInstrucor = Instructor.new("Helen" , "e@d.edu") 
familyDoctor = Doctor.new("Joseph", "g@k.com" )  

puts"\n*** Working ***"
puts rubyInstrucor.work("marker") 
puts familyDoctor.work("stethoscope") 

rubyInstrucor.set_email("prof@school.edu")  
familyDoctor.set_email("doc@hospital.org") 

puts"\n*** Result of the overriding to_s ***"
puts rubyInstrucor
puts familyDoctor

puts "\n*** Inspecting ***"
p(rubyInstrucor) 
p(familyDoctor) 


