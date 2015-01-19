start = int(raw_input("Input a number N   :"))

def collatz(start, steps):
    if start == 1:
        print steps
    else:
        if start % 2 == 0:
            start = start / 2
        else:
            start = start * 3 + 1
        steps+=1
        collatz(start, steps)

collatz(start, 0)
