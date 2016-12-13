require "./lib/offset_generator"
require "./lib/key_generator"



class Enigma
	attr_reader :key_generator, :offset_generator

	def initialize

	end

def encrypt(my_message, key=nil, date=nil)
	@key_generator = KeyGenerator.new(key)
	@offset_generator = OffsetGenerator.new(date)
end

def total_rotation(key, offset)
	key.map.with_index do |num, index|
		num + offset[index]
	end
end

end
