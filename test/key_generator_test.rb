require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/key_generator"


class KeyGeneratorTest < Minitest::Test
	def test_class_exists
		assert KeyGenerator
	end 

	def test_instance_of_KeyGenerator_class
		key_gen = KeyGenerator.new
		assert_instance_of KeyGenerator, KeyGenerator.new
	end

	# def test_if_KeyGenerator_has_numbers
	# 	skip
	# 	key_gen = KeyGenerator.new
	# 	assert_equal , key_gen.key 
	# end  

	def test_if_KeyGenerator_can_generate_random_key_of_five
		key_gen = KeyGenerator.new
		assert_equal 5, key_gen.key_random.length
	end

	def test_if_successive_random_key_are_not_equal
		key_gen_1 = KeyGenerator.new
		key_gen_2 = KeyGenerator.new
		assert_equal false, key_gen_1 == key_gen_2
	end
end