class Worker

  def initialize(name)  ###initialize set_name method when you create a new instance of a class
    @name = name
  end
   
  def set_name(name)   
    @name = name
  end 
  
  def get_name
    return @name 
  end 

  ### this is returned by puts
  def work_tool(tool)                      ###set tool
    @tool = tool
    puts "#{@name} works using a #{@tool}" ###get tool and name
  end

  ### this is returned return
  def to_s
    return "#{@name} uses a #{@tool} and can be reached at email: #{@eMail}" ###get the following
  end

end

class Instructor < Worker  ### add Worker class to Instructor class

  def initialize(name, email)   ###init name from Worker class
     super  name                ###inherit super name from Worker class
     @eMail = email             ###part of this Instructor class
  end
  
  def set_email(email)   
    @eMail = email
  end

end

class Doctor < Worker  ### add Doctor class to Instructor class

  def initialize(name, email)  ###init name from Worker class
     super name                ###super name from Worker class
     @eMail = email            ###part of this Doctor class
  end

  def set_email(email)   
    @eMail = email
  end

end

###create new instance, set name, set email,
rubyInstructor = Instructor.new("Helen", "e@d.edu")
familyDoctor = Doctor.new("Joseph", "g@k.com" )
###tools, set tool
puts"\n*** Working ***"
rubyInstructor.work_tool("marker")
familyDoctor.work_tool("stethoscope")
###emails, set new email
rubyInstructor.set_email("prof@school.edu")
familyDoctor.set_email("doc@hospital.org") 
###return name, tool, new email
puts"\n*** Result of the overriding to_s ***"
puts rubyInstructor
puts familyDoctor
###inspect,
puts "\n*** Inspecting ***"
p(rubyInstructor)
p(familyDoctor)

###initialize start car, but cruise control is not initalized because you need speed and other factors for that to be active.  idle can be init.


