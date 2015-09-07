changeReturn(cost = 3.55, payment = 9.00) ->
    change = (payment - cost) * 100 % 100
    quarters = change / 25
    dimes = change % 25 / 10
    nickels = ((change % 25) % 10) / 5
    pennies = (((change % 25) % 10) %5) / 1
    coffee_dict = {'quarters' : quarters, 'dimes' : dimes, 'nickels' : nickels, 'pennies' : pennies}
    change = for coin, amount of coffee_dict
        "#{coin} amount is #{amount} coins"
changeReturn




