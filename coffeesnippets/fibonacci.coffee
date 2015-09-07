
fibonacci: () ->
    int_limit = window.prompt "How many fibonacci numbers do you want to generate?              "
    element = [0,1]
    for num in element
        element.push(element[element.length - 1] + element[element.length - 2])
    alert element
end

fibonacci()
