// Playground - noun: a place where people can play

import UIKit
import Foundation

func decimalToBinary(decimal: Int) -> String
{
    var counter = 0
    var numstring = ""
    while true
    {
        var sum = Int(pow(Double(2), Double(counter)))
        if decimal < sum
        {
            break
        }
        counter += 1
    }
    return decimalToBinaryHelper(decimal, counter, "")

}


func decimalToBinaryHelper(decimal: Int, counter: Int, numstring: String) -> String
{
    var numstring = numstring
    var decimal = decimal
    var counter = counter
    if counter == -1
    {
        return numstring
    }
    else
    {
        var sum = Int(pow(Double(2), Double(counter)))
        if sum <= decimal
        {
            println(numstring)
            numstring = numstring + "1"
            decimal -= sum
            counter -= 1
            println(decimal)
            println(counter)
            println(numstring)
            return decimalToBinaryHelper(decimal, counter, numstring)
        }
        else
        {
            numstring = numstring + "0"
            counter -= 1
            return decimalToBinaryHelper(decimal, counter, numstring)
        }
    }
    
}
println (decimalToBinary(2343))

