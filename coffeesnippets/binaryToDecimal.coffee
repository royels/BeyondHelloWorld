
decimalToBinary: (decimal) ->
  counter = 0
  while true
    if decimal < Math.pow(counter, 2) then break
    counter++
  return decimalToBinaryHelper(decimal, counter, "")

decimalToBinaryHelper: (decimal, counter, numstring) ->
  if counter == -1 then return numstring
  else
    if decimal >= Math.pow(counter, 2)
      numstring += '1'
      decimal -= Math.pow(counter, 2)
      counter--
      return decimalToBinaryHelper(decimal, counter, numstring)
    else
      numstring += '0'
      counter -= 1
      return decimalToBinaryHelper( decimal, counter, numstring)

binaryToDecimal: (binary) ->
  binaryStringArray = binary.toString().split("")
  index = binaryStringArray.length
  sum = 0
  for chary in binaryStringArray
    index -= 1
    if(chary == "1")
      sum += Math.pow(index, 2)
  return sum

