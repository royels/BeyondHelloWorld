//
//  SieveOfEratosthenes.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/28/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation


func find(var toSift: [Int]) -> [Int]
{
    var x = 0
    while x < toSift.count
    {
        var index = x + 1
        while index < toSift.count
        {
            if toSift[index] % toSift[x] == 0
            {
                toSift.removeAtIndex(index)
            }
            else
            {
                index += 1
            }
        }
        x += 1
    }
    return toSift
    
    
}