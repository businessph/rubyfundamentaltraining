class Instructor
   
  def set_name(name)   
    @name = name
  end
  
  def get_name
    return @name 
  end
  
  def work(tool)
    @tool = tool
    puts "#{@name} works using a #{@tool}"
  end

  def get_tool
    return @tool
  end

end

###this does not print
rubyInstructor = Instructor.new
rubyInstructor1 = Instructor.new

###this does not print
rubyInstructor.set_name("ruven")

###this gets printed, puts is inside method
puts
rubyInstructor.work("Marker1")

###this gets printed, puts is not inside method
puts
puts rubyInstructor.get_name

###this gets printed, puts is not inside method
puts
puts rubyInstructor.get_tool

#############################################################################################

###this does not print
rubyInstructor1.set_name("phtestname")

###this gets printed, puts is inside method
puts
puts
rubyInstructor1.work("phtesttools")

###this gets printed, puts is not inside method
puts
puts rubyInstructor1.get_name

###this gets printed, puts is not inside method
puts
puts rubyInstructor1.get_tool

#puts rubyInstructor.work('Marker1')












