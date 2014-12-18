stuf = [2,3,7,5,3,8,9,0,3,2234,23,43,576,89,34]
mergeSort(stuf, 0, len(stuf) -1)


def merge(element,  first,  mid, last):

        i, j, k = first, mid + 1, first
        x = []
        for d in range(0, len(element)):

            x.append(a[d])

            while i <= mid and j <= last:

                if a[i] < a[j]:

                    x[k] = a[i]
                    i+=1

                else:

                    x[k] = a[j]
                    j+=1

                k+=1

            while i <= mid:

                x[k] = a[i]
                i+=1
                k+=1

            while j <= last:

                x[k] = a[j]
                j+=1
                k+=1

            for k in range (first, last):
                a[k] = x[k]



def mergeSort(self,element,  first,  last):

    if (last - first < 2) :

        if (last > first and a[last] < a[first]):


                atemp = a[last];
                a.set(last, a.get(first))
                a.set(first, atemp)

    else:
        middle = (first + last) / 2
        mergeSort(a, first, middle)
        mergeSort(a, middle + 1, last)
        merge(a, first, middle, last)
