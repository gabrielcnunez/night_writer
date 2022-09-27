require './lib/night_writer'

incoming_text = ARGV[0]
outgoing_braille = ARGV[1]

night_writer = NightWriter.new(incoming_text, outgoing_braille)
night_writer.write_to_file
night_writer.print_reply

