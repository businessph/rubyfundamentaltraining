#this module is available but not included
#no access to the give_opinion method

module MoodModule
   GOOD_MOOD  = "optimistic"
   BAD_MOOD   = "pessimistic"
   
	def give_opinion
		return "I'm #{GOOD_MOOD}. I love ruby"
	end
	
	def MoodModule.give_opinion
		return "I'm #{BAD_MOOD}. I'm not sure I like Ruby"
	end
end	

puts "\nMoodModule::GOOD_MOOD"        ###prints what is in double quotes
puts "\n\t" + MoodModule::GOOD_MOOD   ### prints module value
puts "\nMoodModule.give_opinion"      ###prints what is in double quotes
puts "\n\t" + MoodModule.give_opinion ### prints module value n method

#puts give_opinion

