nextPrime: (current_prime) ->
    prime = current_prime
    while true
        while true
            mult = []
            prime++
            for items in [1..prime+1]
                if prime % items == 0 then mult.push(items)
            if(mult.length) <= 2 then return prime
nextPrime()
