package main

import "fmt"; "math"

func main() {
  fmt.Println(decimalToBinary(12))
}



func decimalToBinary(decimal float64) float64 {
  var counter float64 = 0
  for true {
    if decimal < (math.Exp2(counter float64)) {
      break
    }
    counter++
  }
  return decimalToBinaryHelper(decimal, counter, "")

}


func decimalToBinaryHelper(value float64, counter float64, concat string) string {
  if value == -1 {
    return concat
  }
  else {
    if counter >= math.Exp2(counter float64) {
      concat += '1'
      value -= math.Exp2(counter float64)
      counter--
      return decimalToBinaryHelper(decimal, counter, concat)
    }
    else {
      concat += '0'
      counter--
      return decimalToBinaryHelper(decimal, counter, concat)
    }
  }
}
