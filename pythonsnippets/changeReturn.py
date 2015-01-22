def changeReturn():
    cost = float(raw_input("Cost?"))
    payment = float(raw_input("Payment?"))
    change = (payment - cost) % 1.00 * 100
    quarters = change / 25
    dimes = change % 25 / 10
    nickels = ((change % 25) % 10) / 5
    pennies = (((change % 25) % 10) % 5) / 1
    print quarters, dimes, nickels, pennies
