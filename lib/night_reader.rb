class NightReader
  attr_reader :incoming_braille,
              :outgoing_text

  def initialize(incoming_braille, outgoing_text)
    @incoming_braille = incoming_braille
    @outgoing_text = outgoing_text
  end
end