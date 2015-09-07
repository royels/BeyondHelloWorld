findPi: () ->
    limit = window.prompt "To how many demical places do you want to calculate pi? (can only go up to 200,000)  "
    if limit > 200000 then limit = 200000
    piFill = 0
    for num in range(0, limit)
         piFill += Math.pow(16, -1 * num) * (4.0 / (8 * num + 1) - 2.0 / (8 * num + 4) - 1.0 / (8 * num + 5) - 1.0 / (8 * num + 6))
    alert round(piFill, limit-1)
findPi()
