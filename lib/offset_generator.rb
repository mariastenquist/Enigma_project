require "date"

 class OffsetGenerator
# "A" offset = first digit
# "B" offset = second digit
# "C" offset = third digit
# "D" offset = fourth digit
  attr_reader :offset, :a_offset, :b_offset, :c_offset, :d_offset
  def initialize(date = nil)
    @offset = [a_offset, b_offset, c_offset, d_offset]
    # create a new date(current date)
    current_date_offset = get_current_date_offset(date)

    @a_offset = current_date_offset[0].to_i
    @b_offset = current_date_offset[1].to_i
    @c_offset = current_date_offset[2].to_i
    @d_offset = current_date_offset[3].to_i
  end

  def get_current_date_offset(date)

    if date == nil
       date = Date.today.strftime("%d%m%y").to_i
    end
    squared_date = date**2
    squared_date.to_s[-4..-1]
  end

end
