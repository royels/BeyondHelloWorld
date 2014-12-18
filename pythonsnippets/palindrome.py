import reverse
string = raw_input("Shakespeare, my good friend, give me one of your strings. :  ")
if reverse.reversing(string.lower()) == string.lower():
    print "It's a palindrome"
else:
    print "It ain't a palindrome buddy"