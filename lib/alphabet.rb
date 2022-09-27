class Alphabet
  attr_reader :characters

  def initialize
    @characters = {
      "a" => ["0.", "..", ".."],
      "b" => ["0.", "0.", ".."],
      "c" => ["00", "..", ".."],
      "d" => ["00", ".0", ".."],
      "e" => ["0.", ".0", ".."],
      "f" => ["00", "0.", ".."],
      "g" => ["00", "00", ".."],
      "h" => ["0.", "00", ".."],
      "i" => [".0", "0.", ".."],
      "j" => [".0", "00", ".."],
      "k" => ["0.", "..", "0."],
      "l" => ["0.", "0.", "0."],
      "m" => ["00", "..", "0."],
      "n" => ["00", ".0", "0."],
      "o" => ["0.", ".0", "0."],
      "p" => ["00", "0.", "0."],
      "q" => ["00", "00", "0."],
      "r" => ["0.", "00", "0."],
      "s" => [".0", "0.", "0."],
      "t" => [".0", "00", "0."],
      "u" => ["0.", "..", "00"],
      "v" => ["0.", "0.", "00"],
      "w" => [".0", "00", ".0"],
      "x" => ["00", "..", "00"],
      "y" => ["00", ".0", "00"],
      "z" => ["0.", ".0", "00"],
      " " => ["..", "..", ".."]
    }
  end

  def english_to_braille(character)
    @characters.find do |letter, braille|
      return braille if character == letter
    end
  end

  def format_braille(unformatted_message)
    line_1 = []
    line_2 = []
    line_3 = []
    unformatted_message.each do |braille_char|
      line_1 << braille_char[0]
      line_2 << braille_char[1]
      line_3 << braille_char[2]
    end
    [line_1.join, line_2.join, line_3.join]
  end

  def braille_wrap(message_array)    
    break_80_chars = message_array.map {|line| line.scan(/.{1,80}/m)}
    wrapped_lines = []
    0.upto(break_80_chars[0].length-1) do |i|
      wrapped_lines << break_80_chars[0][i] + "\n" + break_80_chars[1][i] + "\n" + break_80_chars[2][i] + "\n"
    end
    wrapped_lines.join
  end

  def braille_to_english(character)
    @characters.find do |letter, braille|
      return letter if character == braille
    end
  end
  
end