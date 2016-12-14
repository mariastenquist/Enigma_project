require "./lib/offset_generator"
require "./lib/key_generator"
require "pry"

class Enigma
	attr_reader :key_generator, :offset_generator

	def initialize

	end

<<<<<<< HEAD
	def encrypt(my_message, key=0, date=0)
		value_of_each_char = my_message.map do |letter|
			character_hash[letter]
		end
		# take the incoming word and find the index for each letter
		# take the offsets and rotate the array based on the previous indexes found
		# return the new encrypted letters
		# binding.pry
	end
=======
def encrypt(my_message, key=nil, date=nil)
	@key_generator = KeyGenerator.new(key)
	@offset_generator = OffsetGenerator.new(date)
end

def total_rotation(key, offset)
	key.map.with_index do |num, index|
		num + offset[index]
	end
end
>>>>>>> 51c592f40cf1b96db99c29fc8f0ca37f6794f4f4

	def characters
    	("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","] 
  	end
end
