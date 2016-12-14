require "./lib/offset_generator"
require "./lib/key_generator"
require "pry"

class Enigma
	attr_reader :key_generator, :offset_generator

	def initialize
		@key_generator = KeyGenerator.new
		@offset_generator = OffsetGenerator.new
	end

	def encrypt(my_message, key=0, date=0)
		value_of_each_char = my_message.map do |letter|
			character_hash[letter]
		end
		# take the incoming word and find the index for each letter
		# take the offsets and rotate the array based on the previous indexes found
		# return the new encrypted letters
		# binding.pry
	end

	def characters
    	("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","] 
  	end
end
