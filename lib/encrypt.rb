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
	end
end

e = Encrypt.new(ARGV[0], ARGV[1])
