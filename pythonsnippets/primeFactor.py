



def primeFactor():
    number = int(raw_input("What number would you like to observe the prime factorization for? :"))
    
    print isPrime(number)
def isPrime(number):
    mult = []
    for items in range(1, number):
        if number % items == 0:
            tupl = items, number / items
            mult.append(tupl)
    if(len(mult)) <= 2:
        return str(number) + ' '
    else:
        return isPrime(mult[1][0]) + isPrime(mult[1][1])

primeFactor()