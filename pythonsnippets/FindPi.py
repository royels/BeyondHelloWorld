from sympy import *

def FindPi():
    limit = int(raw_input("To how many demical places do you want to calculate pi? (can only go up to 200,000)  "))
    if limit > 200000:
        limit = 200000
    print format(22.0/7.0 , '.'+str(limit)+'f')
    print pi.evalf(limit)
