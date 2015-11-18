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
    return "#{@name} uses a #{@tool} and can be reached at email: #{@email}" ###get the following
  end

end

class Instructor < Worker  ### add Worker class to Instructor class

  def initialize(name, email)   ###init name from Worker class
     super  name                ###inherit super name from Worker class
     @email = email             ###part of this Instructor class
  end
  
  def set_email(email)   
    @email = email
  end

end

class Doctor < Worker  ### add Doctor class to Instructor class

  def initialize(name, email)  ###init name from Worker class
     super name                ###super name from Worker class
     @email = email            ###part of this Doctor class
  end

  def set_email(email)   
    @email = email
  end

end

class MartialArts < Worker

  def initialize(name, email, block, attack)
    super name
    @email = email
    @block = block
    @attack = attack
  end

  def set_email(email)
    @email = email
  end

  def set_defensive_block(block)
    @block = block
  end

  def get_block
    @block
  end

  def set_offensive_attack(attack)
    @attack = attack
  end

  def get_attack
    @attack
  end

  def get_sentence
    return "#{@name} uses a #{@tool} and can be reached at email: #{@email}, #{@block}, #{@attack}" ###get the following
  end

end

###create new instance, set name, set email,
rubyInstructor = Instructor.new("Helen", "e@d.edu")
familyDoctor = Doctor.new("Joseph", "g@k.com" )
martial_arts_student = MartialArts.new("phtestname", "phtestemail", "phtestblock", "phtestattack")

###tools, set tool
puts"\n*** Working ***"
rubyInstructor.work_tool("marker")
familyDoctor.work_tool("stethoscope")
martial_arts_student.work_tool("knife")

###emails, set new email
rubyInstructor.set_email("prof@school.edu")
familyDoctor.set_email("doc@hospital.org")
martial_arts_student.set_email("a@a.com")

###return name, tool, new email
puts"\n*** Result of the overriding to_s ***"
puts rubyInstructor
puts familyDoctor
puts martial_arts_student

###inspect,
puts "\n*** Inspecting ***"
p(rubyInstructor)
p(familyDoctor)
p(martial_arts_student)


puts "\n*** phtest ***"
martial_arts_student.set_name('phtestname1')
martial_arts_student.set_email('phtestemail1')
martial_arts_student.work_tool('knife1')
martial_arts_student.set_defensive_block('phtestblock1')
martial_arts_student.set_offensive_attack('phtestattack1')

puts martial_arts_student.get_sentence
###initialize start car, but cruise control is not initalized because you need speed and other factors for that to be active.  idle can be init.


