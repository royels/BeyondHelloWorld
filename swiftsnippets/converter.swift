//
//  binaryToDecimal.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/21/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//


import UIKit
import Foundation
class Converter
{
    func decimalToBinary(decimal: Int) -> String
    {
        var counter = 0 // var implies variable, let is basically final.
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
        return decimalToBinaryHelper(decimal, counter: counter, numstring: "")
        
    }


    func decimalToBinaryHelper(decimal: Int, counter: Int, numstring: String) -> String
    {
        var numstring = numstring
        var decimal = decimal // I am almost certain this was unnecessary, but yay for first time language declarations.
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
                numstring = numstring + "1"
                decimal -= sum
                counter -= 1
                return decimalToBinaryHelper(decimal, counter: counter, numstring: numstring)
            }
            else
            {
                numstring = numstring + "0"
                counter -= 1
                return decimalToBinaryHelper(decimal, counter: counter, numstring: numstring)
            }
        }
    }
}