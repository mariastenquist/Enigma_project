class OffsetGenerator

# "A" offset = first digit
# "B" offset = second digit
# "C" offset = third digit
# "D" offset = fourth digit

  def initialize
    # create a new date(current date)
    current_date_offset = get_current_date_offset(Time.now)

    @a_offset = current_date_offset[0]
    @b_offset = current_date_offset[1]
    @c_offset = current_date_offset[2]
    @d_offset = current_date_offset[3]
  end

  def get_current_date_offset(date)
    # take date and put in this format DDMMYY
    formatted_date = date.strftime("%d%m%y")
    # find last four digits of squared numeric version of date
    squared_date = formatted_date.to_i**2
    # square numeric form of date
    squared_date.to_s[-4..-1]
  end


end
