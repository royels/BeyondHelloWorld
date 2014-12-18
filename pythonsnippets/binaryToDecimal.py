

class Converter(object):

  def decimalToBinary( self, decimal):
    counter = 0
    while True:
      if decimal < 2**counter:
        break
      counter += 1
    return self.decimalToBinaryHelper( decimal, counter, "")

  def decimalToBinaryHelper( self, decimal, counter, numstring):
    if counter == -1:
      return numstring
    else:
      if decimal >= 2**counter:
        numstring += '1'
        decimal -= 2**counter
        counter -=1
        return self.decimalToBinaryHelper( decimal , counter, numstring)
      else:
        numstring += '0'
        counter -= 1
        return self.decimalToBinaryHelper( decimal, counter, numstring)

  def binaryToDecimal(self, binary):

    binaryString = str(binary)
    decimal = 0
    for char in binaryString:
      

if __name__ == '__main__':
  conv = Converter()
  conv.decimalToBinary(123)
  conv.binaryToDecimal(01111011)
