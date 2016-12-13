require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/enigma"
class EnigmaTest < Minitest::Test
  attr_reader :enigma

  def setup
    @enigma = Enigma.new
    #set our instance var @enigma = an instance of class enigma
  end

  def test_class_exists
    assert enigma
  end

  def test_it_has_key
    assert_equal 4, enigma.key_generator.key.length
  end

  def test_it_has_offset
    assert_equal 4, enigma.offset_generator.offset.length
  end

  def test_it_can_find_total_rotation
    actual = enigma.total_rotation([12, 10, 18, 21], [1, 1, 1, 1])
    assert_equal [13, 11, 19, 22], actual
  end

  def test_it_can_encrypt_a_letter
    skip
    letter = "p"
    assert_equal "", enigma.encrypt(letter)
  end

  def test_it_can_encrypt_a_message
    my_message = "this is so secret ..end.."
  end
end
