require './lib/keys'
require './lib/offsets'

class Shift

  include Keys
  include Offset

  def make_keys(number)
    array = number.split(//).map {|string| string.to_i}
    split_array = array.each_cons(2).to_a
    split_array.map {|element| element.join.to_i}
  end

  def date_squared(given_date)
    date = given_date.to_i
    date **2
  end

end
