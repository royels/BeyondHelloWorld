
def primeFactor()
    print "What number would you like to observe the prime factorization for? :"
    num = gets.chomp.to_i
    puts isPrime(num)
end

def isPrime(number)
    mult = []
    (1..number).each do |items|
        if number % items == 0
            tupl = items, number / items # TIL. I was expecting a tuple and the commas turned it into a list.
            mult << tupl
        end
    end
    if(mult.length) <= 2
        return number.to_s + ' '
    else
        return isPrime(mult[1][0]) + isPrime(mult[1][1])
    end
end

primeFactor()
