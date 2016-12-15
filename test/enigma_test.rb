require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/enigma"

class EnigmaTest < Minitest::Test
  attr_reader :enigma

  def setup
    @enigma = Enigma.new
  end

  # def test_class_exists
  #   assert enigma
  # end

  # def test_it_has_key
  #   assert_equal 4, enigma.key_generator.length
  # end
  
  # def test_it_has_offset
  #   assert_equal 4, enigma.offset_generator.length
  # end

  # def test_it_can_find_total_rotation
  #   actual = enigma.total_rotation([12, 10, 18, 21], [1, 1, 1, 1])
  #   assert_equal [13, 11, 19, 22], actual
  # end

  # def test_it_can_encrypt_a_letter
  #   skip
  #   message = "snow"
  #   enigma.encrypt(message)
  #   needs an assertion
  # end
  
  def test_it_can_encrypt_a_message
    my_message = "this is so secret ..end.."
    assert_equal my_message.length, @enigma.encrypt(my_message).length
  end
end
