def changeReturn()
    print "Cost? -->"
    cost = gets.chomp.to_f
    print "Payment -->"
    payment = gets.chomp.to_f
    change = (payment - cost) % 1.00 * 100
    quarters = change / 25
    dimes = change % 25 / 10
    nickels = ((change % 25) % 10) / 5
    pennies = (((change % 0.25) % 10) %5) / 1
    ruby_dict = {'quarters' => quarters, 'dimes' => dimes, 'nickels' => nickels, 'pennies' => pennies}
    ruby_dict.each{|key,value| puts "#{key} :  #{value}"}
end

changeReturn()
