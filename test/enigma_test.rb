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
    assert_equal 4

  end

  def test_it_can_find_total_rotation

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
