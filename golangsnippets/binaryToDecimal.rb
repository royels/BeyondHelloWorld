class Converter
  def decimalToBinary(decimal)
    counter = 0
    while true
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
    binaryStringArray = binary.to_s.chars.to_a
    index = binaryStringArray.length
    sum = 0
    for chary in binaryStringArray
       index -= 1
	     if(chary == "1")
		       sum += 2**index
       end
    end
    return sum
  end

end


conv = Converter.new()
puts conv.decimalToBinary(1111)
puts conv.binaryToDecimal(1010101111) #is octal, so will be different from 1111
