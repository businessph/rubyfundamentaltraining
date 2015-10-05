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

###create a new instance of a class > then add method/behaviors to the new instance > class includes the MoodModule
perspective = Perspective.new

perspective.give_perspective ### give the newly created perspective behavior 1
perspective.give_another_perspective ### give the newly created perspective behavior 1
### to print needs > puts > instance > module method
puts perspective.give_opinion ### give the newly created perspective behavior 1
### does not print because > the instance cannot directly access the MoodModule directly without puts
perspective.give_opinion ### this is not returned because .give_opinion is not part of the class class can only use the

### you need to create a def of a def
#######################################################################################
#######################################################################################

module PhModule
  def module_method_phtest1
    return "\nreturn module PhModule"
  end
end

class Ph_class
  include PhModule
  def class_method_phtest1
    puts module_method_phtest1
  end
end

###create new instance of Ph_class and name ph_class1
     ph_class1 = Ph_class.new

###use new instance and add class behavior/method

puts ph_class1.class_method_phtest1  ###returned
     ph_class1.class_method_phtest1  ###returned
puts ph_class1.module_method_phtest1 ###returned
     ph_class1.module_method_phtest1 ###not returned, why is this not returned???

#######################################################################################
#######################################################################################