print "Enter text here: "
word = $stdin.gets.chomp.downcase.chars.to_a
hashing = Hash.new(0)
vowel = ['a', 'e', 'i', 'o','u']

(0..word.length - 1).each do |c|
    if vowel.include?(word[c])
        hashing[word[c]] += 1
    end
  end
puts hashing.inspect
