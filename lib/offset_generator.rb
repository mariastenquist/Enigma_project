require "date"

 class OffsetGenerator
   attr_reader :offset

  def square_the_date
    date_squared = (Date.today.strftime("%d%m%y").to_i) ** 2
    get_offset(date_squared)
  end

  def get_offset(date_squared)
    @offset = date_squared.to_s.chars[-4..-1]
  end

end
