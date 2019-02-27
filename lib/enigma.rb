require './lib/shift'

class Enigma

  def initialize
    @shift = Shift.new
    @character_set = @shift.character_set
  end

  def message(word)
    message_array = word.split(//)
  end

  def encrypt(word, key, date)
    message_array = message(word)
    shift = @shift.shift_values(key, date)
    translated = message_array.map do |letter|
      if index = @character_set.index(letter)
        replaced = @character_set.rotate(shift[0])[index]
        shift = shift.rotate
        replaced
      else
        replaced = letter
        shift = shift.rotate
        replaced
      end
    end.join
    translation(translated, key, date)
  end

  def translation(message, key, date)
    {encryption: message, key: key, date: date}
  end
end
