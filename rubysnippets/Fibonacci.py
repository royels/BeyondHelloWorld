
def Fibonacci():
    intLimit = int(raw_input("How many fibonacci numbers do you want to generate?              "))  
    element = [0,1]
    for num in range(2, intLimit):
        element.append(element[len(element) - 1] + element[len(element) - 2])
    print element
Fibonacci()

""" intLimit = int(raw_input("How many fibonacci numbers do you want to generate?              "))
    a, b = 0, 1
    while a < n:
        print a,
        a, b = b, a+b
 """