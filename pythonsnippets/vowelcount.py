from collections import defaultdict as f

word = raw_input("Give me strings and I'll give you vowels    :  ").lower()
cont = f(int)
vowel = ['a', 'e', 'i', 'o','u']

for c in word:
    if c in vowel:
        cont[c] += 1
print cont.items()