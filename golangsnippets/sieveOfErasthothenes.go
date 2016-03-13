require 'set'
require './nextPrime.rb'
require './primeFactor.rb'


class Eratosthenes

  def find(toSift, num)
    init_num = 2
    while init_num < num
      toSift.delete(init_num)
      init_num += 

  end

end
print "Enter a number: "
num = gets.chomp.to_i
e = Eratosthenes.new()
puts e.find((2..num).to_a.to_set, num)
