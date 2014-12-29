//
//  primeFactor.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/28/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation

func factorize(number: Int) -> [Int]
{
    var store : [(name: Int, value: Int)] = []
    for items in 1...number
    {
        if number % items == 0
        {
            store.append(name: items, value: number / items)
        }
    }
    if store.count <= 2
    {
        return [number]
    }
    else
    {
        println(store[1].name)
        println(store[1].value)
        return factorize(store[1].name) + factorize(store[1].value)
    }

    
}