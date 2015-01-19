from heapq import merge


def mergeSort(toSort):
    if len(toSort) <= 1:
	return toSort

    midIndex = len(toSort) // 2
    left = toSort[:midIndex]
    right = toSort[midIndex:]

    left = mergeSort(left)
    right = mergeSort(right)

    return merge(left, right)


stuf = [2,3,7,5,3,8,9,0,3,2234,23,43,576,89,34]
print list(mergeSort(stuf))

