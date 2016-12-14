require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/offset_generator"
require "date"
class OffsetGeneratorTest < Minitest::Test
  def test_class_exists
    assert OffsetGenerator
  end

  def test_instance_of_OffsetGenerator_class
    offset_generator = OffsetGenerator.new
    assert_instance_of OffsetGenerator, offset_generator
  end

  def test_an_offset_is_generated
    offset_generator = OffsetGenerator.new
    date_squared = 14693318656

    assert_equal ["8", "6", "5", "6"], offset_generator.get_offset(date_squared)
  end

  def test_offset_generator_is_not_random
    offset_generator = OffsetGenerator.new
    offset_1 = offset_generator.square_the_date
    offset_2 = offset_generator.square_the_date

    assert offset_1 == offset_2
  end

end
