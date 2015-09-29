###  include module in the perspective class class
### you cannot create a new instance of a module

module MoodModule ###user is saying use a module and this is the Modulename

  GOOD_MOOD = "optimistic" ### Global Variables in all caps
  BAD_MOOD = "pessimistic" ### Global Variables in all caps

  def give_opinion
    return "I'm #{GOOD_MOOD}. I love ruby" ### return global variable
  end
  
  def MoodModule.give_opinion
    return "I'm #{BAD_MOOD}. I'm not sure I like Ruby"
  end

end 


class Perspective ###create class

   include MoodModule
	
	def give_perspective ### return def
		puts give_opinion 
	end
	
	def give_another_perspective ### return def
		puts MoodModule.give_opinion 
	end
	
end

perspective = Perspective.new ### create a new perspective

perspective.give_perspective ### give the newly created perspective behavior 1
perspective.give_another_perspective ### give the newly created perspective behavior 1
puts perspective.give_opinion ### give the newly created perspective behavior 1

perspective.give_opinion ### this is not returned because you are creating a new perspective class and adding mod to it
                         ### you need to create a def of a def
module PhModule

def phtest1
  return "\nphtest1 results"
end

end

class Ph_class

  include PhModule

def puts_phtest1
  puts phtest1
end

end

newclass = Ph_class.new
newclass.puts_phtest1