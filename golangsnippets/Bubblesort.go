class Bubblesort2
    def sorting(toSort)
        (0..toSort.length - 1).each do |i|
            (0..toSort.length - 1 - i).each do |u|
                if toSort[u] > toSort[u + 1]
                    temp = toSort[u]
                    toSort[u] = toSort[u + 1]
                    toSort[u + 1] = temp
                end
            end
        end
        return toSort
    end
end
b = Bubblesort2.new()
puts b.sorting([5,2,1,3,7,3,2,4,10,23,43,1233,34,6,4])
