def nextPrime(current_prime)
    prime = current_prime
    while true
        while true
            mult = []
            prime += 1
            (1..prime+1).each do |items|
                if prime % items == 0:
                    yupl = items, prime / items
                    mult << yupl
                end
            if(mult.length) <= 2
                return prime
                break
            end
        end
    end
end
nextPrime()
