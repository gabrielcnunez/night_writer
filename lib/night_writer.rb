class NightWriter
  attr_reader :incoming_text,
              :translate_to_braille
              
  def initialize(incoming_text, translate_to_braille)
    @incoming_text = incoming_text
    @translate_to_braille = translate_to_braille
  end

  def read_file
    message = File.open(@incoming_text, "r")
    message.read
  end

  def print_reply
    message = File.open(@incoming_text, "r")
    total_characters = message.read.size
    p "Created '#{@translate_to_braille}' containing #{total_characters} characters"
  end

  def write_to_file
    message = File.open(@incoming_text, "r")
  end
end

