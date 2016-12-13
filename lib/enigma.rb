require "./lib/offset_generator"
require "./lib/key_generator"



class Enigma
	attr_reader :key_generator, :offset_generator

	def initialize
		@key_generator = KeyGenerator.new
		@offset_generator = OffsetGenerator.new
	end

def encrypt(my_message, key=0, date=0)
end


end

end
