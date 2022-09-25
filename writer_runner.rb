require './lib/night_writer'

incoming_text = ARGV[0]
translate_to_braille = ARGV[1]

night_writer = NightWriter.new(incoming_text, translate_to_braille)
night_writer.print_reply

