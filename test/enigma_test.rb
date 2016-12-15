require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/enigma"

class EnigmaTest < Minitest::Test
  attr_reader :enigma

  def setup
    @enigma = Enigma.new
  end

  def test_class_exists
    assert enigma
  end

  def test_it_has_key
    assert_equal 4, enigma.key.length
  end
  
  def test_it_has_offset
    assert_equal 4, enigma.offset.length
  end
 
  def test_it_can_find_total_rotation
    actual = enigma.total_rotation
    assert_equal 4, actual.length
  end
  
  def test_it_can_encrypt_a_message
    my_message = "this is so secret ..end.."
    assert_equal my_message.length, @enigma.encrypt(my_message).length
  end
end
