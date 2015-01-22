

limit = int(raw_input("N?   :"))
fact = 1
for num in range(1, limit):
    fact = fact * num
print fact

def factorialFinderRecurse():
    factFinderHelp(int(raw_input("N?    :")), 1)

def factFinderHelp(number, sum):
    if number == 0:
        print sum
    else:
        factFinderHelp(number - 1, sum * number)

factorialFinderRecurse()
