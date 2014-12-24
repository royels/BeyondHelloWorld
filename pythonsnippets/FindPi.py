from sympy import *

def FindPi():
    limit = int(raw_input("To how many demical places do you want to calculate pi? (can only go up to 200,000)  "))
    if limit > 200000:
        limit = 200000
    print pi.evalf(limit)
    piFill = 0
    for num in range(0, limit):
         piFill += 16.0**-num * (4.0 / (8 * num + 1) - 2.0 / (8 * num + 4) - 1.0 / (8 * num + 5) - 1.0 / (8 * num + 6))
    print round(piFill, limit-1)


if __name__ == "__main__":
    FindPi()
