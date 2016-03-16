


print "N?   :"
limit = gets.chomp.to_i
fact = 1
(1..limit).each do |i|
    fact = fact * i
end

puts "#{fact}\n"

def factorial_finder_recurse()
    print "N?    :"
    fact_finder_help(gets.chomp.to_i, 1)
end

def fact_finder_help(number, sum)
    if number == 0
        print sum
    else
        fact_finder_help(number - 1, sum * number)
    end
end

puts factorial_finder_recurse()
