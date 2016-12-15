require "./lib/offset_generator"
require "./lib/key_generator"
require "pry"

class Enigma
	attr_reader :key_generator, :offset_generator, :character_map

	def initialize
		@key = KeyGenerator.new.format_key
		@offset = OffsetGenerator.new.square_the_date
	end

	def total_rotation
		@key.map.with_index do |num, index|
			num + @offset[index]
		end
	end

	def encrypt(my_message)
		total_rotation
		letters = message_to_characters(my_message)
		encrypted_letters = letters.map do |set|
			set.map.with_index do |char, index|
				encrypt_letters(char, index)
			end
		end.join("")
	end

	def message_to_characters(my_message)
		my_message.chars.each_slice(4).to_a
	end

	def encrypt_letters(char, index)
		char_downcase = char.downcase
		char_index    = characters.index(char_downcase)
		char_rotation = total_rotation[index] + char_index
		set_index     = char_rotation % characters.count
		
		characters[set_index]
	end

	def characters
    	("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]
  	end
end
