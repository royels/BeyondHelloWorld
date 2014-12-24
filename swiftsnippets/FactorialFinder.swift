//
//  FactorialFinder.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/22/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation

// get user input prior


func iterativeFactorial(inout limit: Int) -> Int
{
    var sum = 1
    for(var a = 1; a < limit + 1; a++)
    {
        sum = sum * a
    }
    return sum
}


func recursiveFactorial(inout limit: Int) -> Int
{
    var step = 1
    return recursiveFactorialHelper(&limit, &step)
}

func recursiveFactorialHelper(inout limit: Int,inout step: Int) -> Int
{
    if limit == 0
    {
        return step
    }
    else
    {
        step = step * limit
        --limit
        return recursiveFactorialHelper(&limit, &step)
    }

}
