def changeReturn()
    print "Cost? -->"
    cost = gets.chomp.to_f
    print "Payment -->"
    payment = gets.chomp.to_f
    change = payment - cost
    change = change % 1.00
    quarters = change / 0.25
    dimes = change % 0.25 / 0.10
    nickels = ((change % 0.25) % 0.10) / 0.05
    pennies = (((change % 0.25) % 0.10) %0.05) / 0.01
    ruby_dict = {'quarters' => quarters, 'dimes' => dimes, 'nickels' => nickels, 'pennies' => pennies}
   ruby_dict.each{|key,value| puts "#{key} :  #{value}"}

 
end

changeReturn()


