class Bubblesort2(object):

    def sorting(self, toSort):
        for i in range(0, len(toSort)-1):
            for u in range(0, len(toSort) - i -1):
                if toSort[u] > toSort[u + 1]:
                    temp = toSort[u]
                    toSort[u] = toSort[u + 1]
                    toSort[u + 1] = temp
        return toSort
if __name__ == "__main__":
    b = Bubblesort2()
    print b.sorting([5,2,1,3,7,3,2,4,10,23,43,1233,34,6,4])
