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

  def test_current_date_offset_method
    offset_generator = OffsetGenerator.new
    #create a Date.new object with a particular date
    date = 121216
    #call on the get_current_date_offset method with that date
    result = offset_generator.get_current_date_offset(date)
    assert_equal "8656", result
    assert_equal 4, result.length
  end

end
