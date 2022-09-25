class NightWriter
  attr_reader :incoming_text,
              :translate_to_braille
              
  def initialize(incoming_text, translate_to_braille)
    @incoming_text = incoming_text
    @translate_to_braille = translate_to_braille
  end

  def print_reply
    message = File.open(@incoming_text, "r")
    total_characters = message.read.size
    "Created '#{@translate_to_braille}' containing #{total_characters} characters"
  end
end

