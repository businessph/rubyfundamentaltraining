# an entire application including saving data

puts "Required built-in module returned: #{require 'yaml'}"

$album_array = Array.new

$fn = 'album_database.yml'    # data file

class Album   
    def initialize(arr) 
        @name  = arr[0]
        @artist = arr[1]
        @numtracks = arr[2]
    end
    
    def get_details
        [@name, @artist, @numtracks]
    end
end


class PopAlbum < Album  
    def initialize(arr)
        super(arr)
        @genre = arr[3]
    end
    
    def get_details        
        super << @genre   # super calls get_details in the superclass
    end
end


class ClassicalAlbum < Album
    def initialize(arr)
        super(arr)
        @composer   = arr[3]
    end
    
    def get_details        
        super << @composer
    end    
end

def get_album_info
    print "Enter Album name: " 
    album_name = gets.chomp
    print "Enter artist's name: " 
    atrist_name = gets.chomp
    print "Enter number of tracks: " 
    num_tracks = gets.chomp.to_i
    [album_name, atrist_name, num_tracks]
end

def get_classicalAlbum_info
    albumInfo = get_album_info
    print "Enter composer's name: " 
    composer_name = gets.chomp
    albumInfo << composer_name
end

def get_popAlbum_info
    albumInfo = get_album_info
    print "Enter genre of music: " 
    genre = gets.chomp
    albumInfo << genre
end

def addAlbum(album)
    $album_arr << album
end

def saveDB 
  puts "SAVING TO FILE"     
    File.open($fn, 'w') {
        |f|
        f.write($album_arr.to_yaml)    # to_yaml converts to YAML format
    }
end

def loadDB
    input_data = IO.read($fn)
    $album_arr = YAML::load(input_data)
end

def displayData
    puts($album_arr.to_yaml)
end

#########################################################

if File.exist?($fn) then
    loadDB
    displayData
else
    puts "File #{$fn} not found."
end

answer = ''
until answer == 'q' do  
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
