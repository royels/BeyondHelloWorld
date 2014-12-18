def changeReturn():
    cost = float(raw_input("Cost?"))
    payment = float(raw_input("Payment?"))
    change = payment - cost
    quarters = change / .25
    dimes = change % .25 / .10
    nickels = ((change % .25) % .10) / .05
    pennies = (((change % .25) % .10) %.05) / 0.01
    print quarters, dimes, nickels, pennies