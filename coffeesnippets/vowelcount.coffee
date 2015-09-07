vowelcount: () ->
    text = window.prompt "Enter some text"
    vowel = ['a', 'e', 'i', 'o','u']
    hashing = []
    for c in [0..word.length]
        if word.split("")[c] not in vowel
            hashing[word[c]] += 1
vowelcount()
