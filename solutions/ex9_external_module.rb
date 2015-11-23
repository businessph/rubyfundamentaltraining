
module CalorieMeasurer                   ### module name needs to be cap
  
    HEALTHY = "healthy, the right number of calories"  ### constant
    UN_HEALTHY = "un_healthy too many calories"        ### constant
   
    def measureCalories(calories) 
        if calories < 150 then           ### case, calories less than 150 then
          return "That is #{HEALTHY}"    ### return true HEALTHY = "the right number of calories"
        else       
          return "That is #{UN_HEALTHY}" ### false UN_HEALTHY = "too many calories"
        end
    end
  
end 


 




