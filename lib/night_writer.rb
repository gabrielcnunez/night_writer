require './lib/alphabet'

class NightWriter < Alphabet
  attr_reader :incoming_text,
              :translate_to_braille
              
  def initialize(incoming_text, translate_to_braille)
    @incoming_text = incoming_text
    @translate_to_braille = translate_to_braille
    super()
  end

  def read_file
    text = File.open(@incoming_text, "r")
    text.read
  end

  def print_reply
    p "Created '#{@translate_to_braille}' containing #{read_file.size} characters"
  end

  def write_to_file
    new_message = read_file
    writer = File.open(@translate_to_braille, "w")
    writer.write(new_message)
  end

  def translate_message_to_braille
    message = []
    read_file.each_char {|character| message << english_to_braille(character)}
    format_braille(message)
  end


end

