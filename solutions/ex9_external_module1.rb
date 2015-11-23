
module PriceMeasurer                   ### module name needs to be cap
  
    CHEAP = "cheap"  ### constant
    EXPENSIVE = "expensive"        ### constant
   
    def measurePrice(price)
        if price < 10 then           ### case, calories less than 150 then
          return "That is #{CHEAP}"    ### return true HEALTHY = "the right number of calories"
        else       
          return "That is #{EXPENSIVE}" ### false UN_HEALTHY = "too many calories"
        end
    end
  
end 


 




