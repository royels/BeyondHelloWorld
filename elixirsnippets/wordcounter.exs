print "Enter some text:  "
text = STDIN.gets.chomp.downcase.split
hashing = Hash.new(0)
(0..text.length - 1).each do |w|
  if hashing.include?(text[w])
    hashing[text[w]] += 1
  else
    hashing[text[w]] = 1
  end
end
puts hashing.inspect
