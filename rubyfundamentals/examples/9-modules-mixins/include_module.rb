
module MoodModule ###user is saying use a module and this is the Module name

   GOOD_MOOD = "optimistic" ### Global Variables in all caps
   BAD_MOOD = "pessimistic" ### Global Variables in all caps
   
  def give_opinion
    return "I'm #{GOOD_MOOD}. I love ruby" ### return global variable
  end
  
  def MoodModule.give_opinion ###i believe this module is over writing the method above
    return "I'm #{BAD_MOOD}. I'm not sure I like Ruby"
  end

end 

include MoodModule

puts give_opinion ### return the global variable
puts MoodModule.give_opinion
puts GOOD_MOOD
puts BAD_MOOD
