#this module is available but not included
#no access to the give_opinion method

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


puts "MoodModule::GOOD_MOOD"
puts "\t" + MoodModule::GOOD_MOOD
puts "MoodModule.give_opinion" 
puts "\t" + MoodModule.give_opinion 

#puts give_opinion

