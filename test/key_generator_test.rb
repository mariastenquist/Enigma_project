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


	def test_if_KeyGenerator_can_generate_random_key_of_five
		key_gen = KeyGenerator.new
		assert_equal 5, key_gen.default_key.length
	end

	def test_if_successive_random_key_are_not_equal
		key_gen_1 = KeyGenerator.new
		key_gen_2 = KeyGenerator.new
		assert_equal false, key_gen_1 == key_gen_2
	end

	def test_it_can_format_an_encryption_key
		key_gen = KeyGenerator.new
		assert_equal [27,79,94,45], key_gen.format([2,7,9,4,5])
	end
end
