import collections
import re
word = raw_input("What texte do you want to make me process?    :  ")

words =re.split('\W+', word.read().lower())

for item in collections.Counter(words).most_common():
  print item
