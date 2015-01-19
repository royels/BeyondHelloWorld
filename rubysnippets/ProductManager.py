class Product(object):

    def __init__(self, ide, name, price, quantity):
        self.id = ide
        self.name = name
        self.quantity = quantity
        self.price = price


class Inventory(object):

    def __init__(self, listy):
        self.dicty = {}
        for p in listy:
            self.dicty[p.ide] = [p.name, p.price, p.quantity]
    def sumPrice(self):
        sum = 0
        for p in self.dicty:
            sum += float(p.price) * float(p.quantity)
        return sum

if __name__ == "__main__":
    hue = [];
    for i in range(0, 23):
        Product mack = Product( 1231231, "RY", 23.34, 3000)
        hue.append(mack)
    inv = Inventory()
    print inv.sumPrice()
