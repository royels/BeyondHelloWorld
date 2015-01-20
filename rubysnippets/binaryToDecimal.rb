class Converter

  def initialize()
    puts "This worked!"
  end

  def decimalToBinary(decimal)
    counter = 0
    while True
      if decimal < 2**counter
        break
      end
      counter += 1
    end
    return decimalToBinaryHelper( decimal, counter, "")
  end


  def decimalToBinaryHelper(decimal, counter, numstring)
    if counter == -1
      return numstring
    else
      if decimal >= 2**counter
        numstring += '1'
        decimal -= 2**counter
        counter -=1
        return decimalToBinaryHelper( decimal , counter, numstring)
      else
        numstring += '0'
        counter -= 1
        return decimalToBinaryHelper( decimal, counter, numstring)
      end
    end
  end

  def binaryToDecimal(binary)
    binaryString = str(binary)
    decimal = 0
    index = len(binaryString)
      for char in binaryString
  	     if(char == '1')
  		       sum += 2**index
         end
  	     index -= 1
      end
  end
end
conv = Converter.new()
puts conv.decimalToBinary(123)
puts conv.binaryToDecimal(01111011)
