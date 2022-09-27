require './lib/night_reader'

if ARGV.length != 2
  puts "Please enter the name of the file you want to translate" +
  "and the name of new file where you want your tranlation to appear"
  exit
end

incoming_braille = ARGV[0]
outgoing_text = ARGV[1]

night_reader = NightReader.new(incoming_braille, outgoing_text)
night_reader.write_to_file
night_reader.print_reply