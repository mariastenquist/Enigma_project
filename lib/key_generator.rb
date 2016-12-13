require "pry"

class KeyGenerator

	attr_reader :key

	def initialize(key = default_key)
		@key = key

		# @key = key_random

		# @date = date
	end


	def default_key
		Array.new(5){rand(0..9)}
	end

	def format_key
		key_gen
		a =
		b =
		c =
		d =

	end

	# key_1 = KeyGenerator.new
	# key_2 = KeyGenerator.new

end
