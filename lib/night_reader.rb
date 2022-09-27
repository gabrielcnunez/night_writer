class NightReader
  attr_reader :incoming_braille,
              :outgoing_text

  def initialize(incoming_braille, outgoing_text)
    @incoming_braille = incoming_braille
    @outgoing_text = outgoing_text
  end

  def read_file
    text = File.open(@incoming_braille, "r")
    text.read
  end

  def print_reply
    p "Created '#{@outgoing_text}' containing #{read_file.size / 6} characters"
  end
  
end