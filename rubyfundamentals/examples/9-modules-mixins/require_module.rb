# Rrequire module from another file - makes it available as if it was in this file

puts "\nResponse from require_relative:  #{require_relative( "stand_alone_module.rb" )}" 

print "\nMoodModule.give_opinion: " 
puts MoodModule.give_opinion 

print "\nMoodModule::GOOD_MOOD: "	
puts MoodModule::GOOD_MOOD
	
# puts give_opinion  # This won't work!

include MoodModule 

print "\ngive_opinion: " 
puts give_opinion 
	 
