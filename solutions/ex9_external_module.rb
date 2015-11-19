
module CalorieMeasurer
  
    HEALTHY = "the right number of calories"
    UN_HEALTHY = "too many calories"
   
    def measureCalories(calories) 
        if calories < 150 then           ### case
          return "That is #{HEALTHY}"    ### true HEALTHY = "the right number of calories"
        else       
          return "That is #{UN_HEALTHY}" ### false UN_HEALTHY = "too many calories"
        end
    end
  
end 


 




