
module MoodModule
   GOOD_MOOD = "optimistic"
   BAD_MOOD = "pessimistic"
   
  def give_opinion
    return "I'm #{GOOD_MOOD}. I love Ruby"
  end
  
  def MoodModule.give_opinion
    return "I'm #{BAD_MOOD}. I'm not sure I like Ruby"
  end

end	
