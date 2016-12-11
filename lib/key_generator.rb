require "pry"

class KeyGenerator

	attr_reader :key

	def initialize
		@key = key
		# @date = date
	end


	def key_random
		digits_arr = []
		5.times do
		digits_arr << rand(0..9)
		end
		@key = digits_arr.join
	end

	# key_1 = KeyGenerator.new
	# key_2 = KeyGenerator.new

end
