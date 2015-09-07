
limit = window.prompt("Enter an upper limit")
fact = 1
for num in [1..limit]
    fact = fact * num
alert(fact)

val = fact_finder_help(10, 0)
fact_finder_help: (number, sum) ->
    if number == 0 then alert(sum)
    else fact_finder_help(number - 1, sum * number)


