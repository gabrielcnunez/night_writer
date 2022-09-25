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
    p "Created '#{@translate_to_braille}' containing #{read_file.size} characters"
  end

  def write_to_file
    message = File.open(@incoming_text, "r")
  end
end

