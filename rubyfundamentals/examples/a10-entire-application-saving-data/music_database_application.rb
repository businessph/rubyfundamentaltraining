### an entire application including saving data

### require yaml
puts "Required built-in module returned: #{require 'yaml'}"

###global array equals create new array
$album_array = Array.new

###global fn equals this yaml file name
$fn = 'album_database.yml'    # data file

class Album

  ###class Album init arr with the following sets and gets
    def initialize(arr) 
        @name  = arr[0]
        @artist = arr[1]
        @numtracks = arr[2]
    end

    ### get the following instance variables
    def get_details
        [@name, @artist, @numtracks]
    end

end

###class PopAlbum inherits Album
class PopAlbum < Album  

  ###class PopAlbum init arr with the following set and get
  def initialize(arr)
        ###include superclass
        super(arr)
        ###set and get genre
        @genre = arr[3]
    end

  ### get the following instance variables, genre is only a part of the PopAlbum class
    def get_details        
        super << @genre   # super calls get_details in the superclass
    end

end

###class ClassicalAlbum inherits Album
class ClassicalAlbum < Album

  ###class ClassicalAlbum init arr with the following set and get
  def initialize(arr)
        ###include superclass
        super(arr)
        ###set and get genre
        @composer   = arr[3]
    end

    ### get the following instance variables, genre is only a part of the ClassicalAlbum class
    def get_details        
        super << @composer   # super calls get_details in the superclass
    end

end

###name, artist, numtracks, genre, composer

### get album info
def get_album_info
    print "Enter Album name: " ### set
    album_name = gets.chomp    ### get
    print "Enter artist's name: " 
    artist_name = gets.chomp
    print "Enter number of tracks: " 
    num_tracks = gets.chomp.to_i
    [album_name, artist_name, num_tracks] ### return
end

def get_classicalAlbum_info
    albumInfo = get_album_info ### set previous def to variable
    print "Enter composer's name: " 
    composer_name = gets.chomp
    albumInfo << composer_name ### add composer_name to albumInfo = get_album_info
end

def get_popAlbum_info
    albumInfo = get_album_info ### set previous def to variable
    print "Enter genre of music: " 
    genre = gets.chomp
    albumInfo << genre ### add genre to albumInfo = get_album_info
end

###$album_arr is a new array, add parameter to new array
def addAlbum(album)
    $album_arr << album   ###add parameter to array
end

###Save info to yaml
def saveDB

  puts "SAVING TO FILE"
    ###open yaml, write, loop, Save info to yaml
    File.open($fn, 'w') {
        |f|
        f.write($album_arr.to_yaml)    ###take input write to array, to_yaml converts to YAML format
    }
end


def loadDB
    input_data = IO.read($fn) ###read yaml file
    $album_arr = YAML::load(input_data) ###array equals yaml load what you read
end


def displayData
    puts($album_arr.to_yaml) ###array to yaml
end

#########################################################

if File.exist?($fn) then     ###if yaml file exists
    loadDB                   ###read yaml file input into array
    displayData              ###array to yaml
else
    puts "File #{$fn} not found."   ###if yaml not found put
end

answer = ''              ### set answer to empty string
until answer == 'q' do   ### until answer comparison equal q while answer != 'q'
  ###
  puts "\nMENU:
        P (Pop Album) 
        C (Classical Album)
        S (save)
        Q (quit)" 
  print "Please, enter your choice:  " 
  
  answer = gets[0].chr.downcase

  case answer     
	      when 'p' then addAlbum(PopAlbum.new(get_popAlbum_info))
	      when 'c' then addAlbum(ClassicalAlbum.new(get_classicalAlbum_info))
        when 's' then saveDB
  end
  
  displayData
  
end 
