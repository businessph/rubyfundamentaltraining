class Instructor 
   
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
  
end



rubyInstrucor = Instructor.new

rubyInstrucor.set_name("ruven") 

rubyInstrucor.work("Marker") 

puts rubyInstrucor.get_name 














