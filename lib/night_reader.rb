require './lib/alphabet'

class NightReader < Alphabet
  attr_reader :incoming_braille,
              :outgoing_text

  def initialize(incoming_braille, outgoing_text)
    @incoming_braille = incoming_braille
    @outgoing_text = outgoing_text
    super()
  end

  def read_file
    text = File.open(@incoming_braille, "r")
    text.read
  end

  def print_reply
    p "Created '#{@outgoing_text}' containing #{read_file.size / 6} characters"
  end

  def write_to_file
    new_message = read_file
    writer = File.open(@outgoing_text, "w")
    writer.write(new_message)
  end

  # def convert_braille_to_array
  #   split_braille = read_file.split("\n")
  #   
  #   WIP
  #   Unable to figure out how to convert the split up braille, which
  #   appears exactly as in the translate_to_braille(except in array form),
  #   into the correct array formatting for translation back to text
  # end

  # def translate_to_english
  #   message = []
  #   # Will need helper method to take braille lines and convert to array
  #   # of three strings
  #   # WIP
  # end
  
end