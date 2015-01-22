
def Fibonacci()
    print "How many fibonacci numbers do you want to generate?              "
    int_limit = gets.chomp.to_i
    element = [0,1]
    (3..int_limit).each do |num|
        element << (element[element.count - 1] + element[element.count - 2])
    end
    print element
end
Fibonacci()
