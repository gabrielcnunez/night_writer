require './lib/write_reader'

incoming_braille = ARGV[0]
outgoing_text = ARGV[1]

night_reader = NightReader.new(incoming_braille, outgoing_text)