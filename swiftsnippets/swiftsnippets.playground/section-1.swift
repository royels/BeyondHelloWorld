// Playground - noun: a place where people can play

import UIKit
import Foundation

class Converter
{
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
        
        return decimalToBinaryHelper(decimal, counter: counter, numstring: numstring)
    }
    
    
    func decimalToBinaryHelper(decimal: Int, counter: Int, numstring: String) -> String
    {
        if counter == -1
        {
            return numstring
        }
        else
        {
            var sum = Int(pow(Double(2), Double(counter)))
            if sum <= decimal
            {
                let numstring = numstring + "1"
                let decimal = decimal - sum
                --counter;
                return decimalToBinaryHelper(decimal, counter, numstring)
            }
        }
    }

}
