
def reversing(string):
    ram = string[::-1]
    return ram



def reverse2(string):
    ram = ''
    for char in reversed(string):
        ram += char
    return ram



if __name__ == "__main__":
    param = raw_input("Enter some text :  ")
    print reversing(param)
    print reverse2(param)
