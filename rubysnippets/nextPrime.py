def nextPrime():
    prime = 1
    while True:
        print 'The current prime number is ', prime
        choice = raw_input('Go for another round? Y or N only please:   ')
        if choice == 'N':
            break
        while True:
            mult = []
            prime+=1
            for items in range(1, prime+1):
                if prime % items == 0:
                    yupl = items, prime / items
                    print yupl
                    mult.append(yupl)
            if(len(mult)) <= 2:
                break
nextPrime()
