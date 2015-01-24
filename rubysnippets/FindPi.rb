def FindPi()
    print "To how many demical places do you want to calculate pi? (can only go up to 200,000)  "
    limit = gets.chomp.to_i
    if limit > 200000:
        limit = 200000
    piFill = 0
    for num in range(0, limit)
         piFill += 16.0**-num * (4.0 / (8 * num + 1) - 2.0 / (8 * num + 4) - 1.0 / (8 * num + 5) - 1.0 / (8 * num + 6))
    print round(piFill, limit-1)
end


FindPi()
