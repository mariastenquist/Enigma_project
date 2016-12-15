require_relative "enigma"
require "pry"

class Encrypt
	def initialize(input_file, output_file)
		@output_file = output_file
		message = File.open(input_file).read.chomp
		start_encryptor(message)
	end

	def start_encryptor(message)
		enigma = Enigma.new
		encrypted = enigma.encrypt(message)
		file = File.open(@output_file, "w")
		file.puts(encrypted)
		# File.close
	end
end

e = Encrypt.new(ARGV[0], ARGV[1])
# initialize(input_file, output_file, key, date)
#in command line, pass ruby decrypt.rb lib/encrypted.txt decrypted.txt key date
# decrypt file arg 0, 1,2,3
#reverse the character map (- instead of + )
# # decrpyt initialize: @key= key, @date = date
# enigma = Enigma.new(key, date)