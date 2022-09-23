message = File.open(ARGV[0], "r")

incoming_text = message.read
lines = File.readlines(ARGV[0])
text = lines.join
total_characters = text.size

message.close


puts "Created " + ARGV[1] + " containing #{total_characters} characters"