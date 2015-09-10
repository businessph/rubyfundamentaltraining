
module CalorieMeasurer
  
    HEALTHY = "the right number of calories"
    UN_HEALTHY = "too many calories"
   
    def measureCalories(calories) 
       if calories < 150 then
          return "That is #{HEALTHY}"
        else       
          return "That is #{UN_HEALTHY}"
        end
    end
  
end 


 




