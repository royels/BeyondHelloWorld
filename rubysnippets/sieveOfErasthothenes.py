

class Eratosthenes(object):

    def find(self, toSift):
        i = 0
        while i < len(toSift):
            u = i + 1
            while u < len(toSift):
                if toSift[u] % toSift[i] == 0:
                    toSift.pop(u)
                else:
                    u += 1
            i += 1
        return toSift

if __name__ == "__main__":
    e = Eratosthenes()
    print e.find(range(2,30))
