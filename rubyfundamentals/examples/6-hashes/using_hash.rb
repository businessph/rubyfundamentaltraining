### easy way to create a hashmap

hash1 = {	'Robert'=>'54 Main st, SF 415-999-8765',
	        'Sarah'=>'600 Ocean Ave., LA 310-345-6679',
	        'Carl'=>'567 Market St, SF 415-223-4588',
          'Ivan'=>'444 5th St, Oakland 510-986-3343' }

###random key cla ss
class Key

end

### create a new key
key = Key.new

### harder way to create hashmap, make hash2 equal to a new hash
hash2 = Hash.new("Some kind of tool")   ###assigns the default
### hash 0
hash2['carpenter'] = 'hammer'
### hash 1
hash2['chef'] = 'blender'
### hash 2
hash2['doctor'] = 'stethoscope'
### hash 3
hash2['videographer'] = 'camera'
### hash 4 the key is set to a new key
hash2[key] = 'Ballerina'

### code starts here ###

puts "\nhash2.1  "
puts hash2

puts "\n***A.  " + hash1['Robert']   ### in hash1 you have key Robert, return Robert value

print "\n***B.  " 
puts hash1['Alex'] ###returns blank nil bc there is no alex

puts "\n***C.  " + hash2['doctor']   ### in hash2 you have key doctor, return doctor value

puts "\n***D.  " + hash2[key]        ### in hash2 you have key key, return key value

puts "\n***E.  " + hash2['dancer']	 ### there is no key dancer in hash2, returns default value ('Some kind of tool') if there is no key in the hash2

print "\n***F.  " 
puts hash1.default		### => nil     ### there is no default for hash1

puts "\n***G.  " + hash2.default				### hash2 = Hash.new("Some kind of tool")   ###hash2.default gives the value of

hash1.default = 'Somewhere in the US'  ### hash1 is now given a default value

puts "\n***H.  " + hash1["Max"]        ### hash1 is now given a default value, there is no Max key, a default value will be generated


### set default value for hashmap, wh en user requests nil key default value will be displayed
###
### hash1.default = 'there is no key value in the hash1'
###
### and
###
### hash1 = Hash.new("there is no key value in the hash1")