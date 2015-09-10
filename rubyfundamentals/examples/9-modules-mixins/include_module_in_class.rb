#  include module in a class

module MoodModule
   GOOD_MOOD = "optimistic"
   BAD_MOOD = "pessimistic"
   
  def give_opinion
    return "I'm #{GOOD_MOOD}. I love ruby"
  end
  
  def MoodModule.give_opinion
    return "I'm #{BAD_MOOD}. I'm not sure I like Ruby"
  end
end 


class Perspective
   include MoodModule
	
	def give_perspective
		puts give_opinion 
	end
	
	def give_another_perspective
		puts MoodModule.give_opinion 
	end
	
end

perspective = Perspective.new

perspective.give_perspective  
perspective.give_another_perspective
puts perspective.give_opinion    