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
      if character == letter
        return braille
      end
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
    "#{line_1.join}\n#{line_2.join}\n#{line_3.join}\n"
  end

end