

class Converter(object):

  def decimalToBinary(decimal):
    counter = 0
    while True:
      if decimal < 2**counter:
        break
      counter += 1
    return decimalToBinaryHelper( decimal, counter, "")
  end

  
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
    index = len(binaryString)
    for char in binaryString:
	if(char == '1'):
		sum += 2**index
	index -= 1

if __name__ == '__main__':
  conv = Converter()
  print conv.decimalToBinary(123)
  print conv.binaryToDecimal(01111011)
