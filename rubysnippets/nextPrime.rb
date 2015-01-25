def nextPrime()
    prime = 1
    while true
        print 'The current prime number is ', prime
        choice = gets.chomp
        if choice == 'N':
            break
        end
        while true
            mult = []
            prime += 1
            (1..prime+1).each do |items|
                if prime % items == 0:
                    yupl = items, prime / items
                    mult << yupl
                end
            if(mult.length) <= 2
                break
            end
        end
    end
end
nextPrime()
