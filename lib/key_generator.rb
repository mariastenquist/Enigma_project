require "pry"

class KeyGenerator

	attr_reader :key

	def initialize
		@key = default_key
	end


	def default_key
		Array.new(5){rand(0..9)}
	end

	def format_key
		a = @key[0..1].join.to_i
		b = @key[1..2].join.to_i
		c = @key[2..3].join.to_i
		d = @key[3..4].join.to_i
		[a, b, c, d]
	end

end
