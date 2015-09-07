
wordcouner: () ->
  text = window.prompt "Enter some text"
  hashing = []
  for w in [0..text.length]
    if text.split("")[w] in hashing then hashing[text.split("")[w]] += 1 else hashing[text[w]] = 1