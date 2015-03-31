require "./reverse.rb"
print "enter some text: "
text = gets.chomp
if Reversed.backwards(text.downcase) == text.downcase
    puts "It's a palindrome"
else
    puts "It ain't a palindrome"
end
