require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/offset_generator"

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
    date = Time.new(1201,12,3)
    #call on the get_current_date_offset method with that date
    result = offset_generator.get_current_date_offset(date)
    assert_equal '2401', result
    assert_equal 4, result.length
  end



end
