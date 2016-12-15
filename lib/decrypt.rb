require "./lib/encrypt"
require "./lib/enigma"
require "pry"

class Decrypt
	def initialize(input_file, output_file, key, date)
		@key = key
		@date = date
		@output_file = output_file
		@input_file = input_file
		message = File.open(input_file).read.chomp
		start_decryptor(message)
	end

	def start_decryptor(message)
		enigma = Enigma.new
		decrypted = enigma.decrypt(message)
		file = File.open(@output_file, "w")
		file.puts(decrypted)
	end
end

d = Decrypt.new(ARGV[0], ARGV[1], ARGV[2], ARGV[3])