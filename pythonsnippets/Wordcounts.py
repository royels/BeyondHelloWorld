import collections

word = raw_input("What file do you want to make me process?    :  ")

words = open(word).read().lower().split()

for item in collections.Counter(words).most_common():
  print item
