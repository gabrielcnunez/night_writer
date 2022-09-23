message = File.open(ARGV[0], "r")

incoming_text = message.read


message.close


puts "Created " + ARGV[1] + " containing 256 characters"