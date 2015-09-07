start = window.prompt("Start point: ")

collatz: (start, steps) ->
    if start == 1
        return steps
    else
        if start % 2 == 0
            start = start / 2
        else
            start = start * 3 + 1
        end
        steps += 1
        collatz(start, steps)
alert collatz(start, 0)
