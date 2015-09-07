
isPrime: (number) ->
    mult = []
    for items in [1..number]
        if number % items == 0
            tupl = [items, number / items] # TIL. I was expecting a tuple and the commas turned it into a list.
            mult.push tupl
    if(mult.length) <= 2 then return number.to_s + ' '
    else
        return isPrime(mult[1][0]) + isPrime(mult[1][1])
alert isPrime(7)
