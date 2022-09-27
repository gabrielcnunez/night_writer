require './lib/alphabet'

class NightWriter < Alphabet
  attr_reader :incoming_text,
              :outgoing_braille
              
  def initialize(incoming_text, outgoing_braille)
    @incoming_text = incoming_text
    @outgoing_braille = outgoing_braille
    super()
  end

  def read_file
    text = File.open(@incoming_text, "r")
    text.read
  end

  def print_reply
    p "Created '#{@outgoing_braille}' containing #{read_file.size} characters"
  end

  def write_to_file
    writer = File.open(@outgoing_braille, "w")
    writer.write(translate_to_braille)
  end

  def translate_to_braille
    message = []
    read_file.each_char {|character| message << english_to_braille(character)}
    braille_array = format_braille(message)
    braille_wrap(braille_array)
  end

end

