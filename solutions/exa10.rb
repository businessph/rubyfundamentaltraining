require 'yaml'

$phonebookArr = Array.new()
$phonebookArr[0]=["Ruven","415..."]
$phonebookArr[1]=["David","510..."]
$phonebookArr[2]=["Barbara","604..."]

$fn='phoneBook.yml'

# saves data to disk in YAML format
# the to_yaml method converts to YAML format

def saveDB      
    File.open($fn,'w') {
        |file|
        file.write($phonebookArr.to_yaml)
    }
end

def loadDB
    input_data = File.read($fn)
    $phonebookArr = YAML::load(input_data)
end


def showData
    puts $phonebookArr.to_yaml
end


if File.exist?($fn) then
    saveDB
    loadDB
    showData
else
    puts "The file #{$fn} cannot be found."
end



