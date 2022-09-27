require './lib/night_writer'

if ARGV.length != 2
  puts "Please enter the name of the file you want to translate" +
  "and the name of new file where you want your tranlation to appear"
  exit
end

incoming_text = ARGV[0]
outgoing_braille = ARGV[1]

night_writer = NightWriter.new(incoming_text, outgoing_braille)

night_writer.write_to_file
night_writer.print_reply

