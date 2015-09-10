# Different ways of creating/populating a hash

hash1 = {	'Robert'=>'54 Main st, SF 415-999-8765',
	'Sarah'=>'600 Ocean Ave., LA 310-345-6679',
	'Carl'=>'567 Market St, SF 415-223-4588',
	'Ivan'=>'444 5th St, Oakland 510-986-3343' }

class Key

end

key = Key.new

hash2 = Hash.new("Some kind of tool")   #assigns the default
hash2['carpenter'] = 'hammer'
hash2['chef'] = 'blender'
hash2['doctor'] = 'stethoscope'
hash2['videographer'] = 'camera'
hash2[key] = 'Ballerina'


puts hash2	
					
puts "\n***A.  " + hash1['Ivan']	

print "\n***B.  " 
puts hash1['Alex'] #returns nil

puts "\n***C.  " + hash2['doctor'] 

puts "\n***D.  " + hash2[key] 

puts "\n***E.  " + hash2['dancer']	 # returns default value ('Some kind of tool')

print "\n***F.  " 
puts hash1.default		#=> nil

puts "\n***G.  " + hash2.default				

hash1.default = 'Somewhere in the US'

puts "\n***H.  " + hash1["Max"]	
		
				