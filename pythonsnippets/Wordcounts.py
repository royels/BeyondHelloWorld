import collections
import re
word = raw_input("What file  do you want to make me process?    :  ")

words =re.split('\W+', open(word).read().lower())

for item in collections.Counter(words).most_common():
  print item
