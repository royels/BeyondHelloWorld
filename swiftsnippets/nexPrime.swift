//
//  nexPrime.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/27/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation


func nextPrime(currentPrime: Int) -> Int
{
    var prime = currentPrime
    while true
    {
        var store:[(name: Int, value: Int)] = []
        prime += 1
        for items in 1...prime
        {
            if prime % items == 0
            {
                store.append(name: items, value: prime / items)
            }
        }
        if store.count <= 2
        {
            break
        }
    }
    return prime

}
