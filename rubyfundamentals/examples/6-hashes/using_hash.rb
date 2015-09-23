### easy way to create a hashmap

hash1 = {	'Robert'=>'54 Main st, SF 415-999-8765',
	        'Sarah'=>'600 Ocean Ave., LA 310-345-6679',
	        'Carl'=>'567 Market St, SF 415-223-4588',
          'Ivan'=>'444 5th St, Oakland 510-986-3343' }


###random key cla ss
class Key

end

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

puts "\nhash2.1  "
puts hash2

puts "\n***A.  " + hash1['Ivan']	

print "\n***B.  " 
puts hash1['Alex'] #returns nil bc there is no alex

puts "\n***C.  " + hash2['doctor'] 

puts "\n***D.  " + hash2[key] 

puts "\n***E.  " + hash2['dancer']	 # returns default value ('Some kind of tool')

print "\n***F.  " 
puts hash1.default		#=> nil      ### there is no default

puts "\n***G.  " + hash2.default				### hash2 = Hash.new("Some kind of tool")   ###assigns the default

hash1.default = 'Somewhere in the US'  ### hash1 default is set

puts "\n***H.  " + hash1["Max"]	
		
				