### require external yaml file
require 'yaml'

### set parameter equal to the yml file
$phoneBookyml = 'phoneBook.yml'

### create new array
$phonebookArr = Array.new()

### set keys and values with in the array
$phonebookArr[0] = ["Ruven","415..."]
$phonebookArr[1] = ["David","510..."]
$phonebookArr[2] = ["Barbara","604..."]
$phonebookArr[3] = ["Barbara1","604.1..."]
$phonebookArr[4] = ["Barbara2","604.2..."]

### saves data to disk in YAML format
### the to_yaml method converts to YAML format
def saveDB      
    File.open($phoneBookyml,'w') {             ### open yml file > write
        |file|                                 ### loop
         file.write($phonebookArr.to_yaml)     ### take the file, write, Array.new
                                   }
end

def loadDB
    input_data = File.read($phoneBookyml)      ### read yml file, array
    $phonebookArr = YAML::load(input_data)     ### created array equals load
end

def showData
    puts $phonebookArr.to_yaml                 ### create puts Array.new to yml
end

if File.exist?($phoneBookyml) then             ### if file exists save, load, and show
    saveDB                                     ### 1
    loadDB                                     ### 2
    showData                                   ### 3
  else
    puts "The file #{$phoneBookyml} cannot be found."    ### else put he following statement
end



