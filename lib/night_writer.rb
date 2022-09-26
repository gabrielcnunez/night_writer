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
    message = File.open(@incoming_text, "r")
    message.read
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
    # WIP
    braille_message = []
    read_file.each_char do |character|
      require 'pry'; binding.pry
      braille_message << convert_to_braille(character)
    end

  end


end

