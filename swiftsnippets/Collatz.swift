//
//  Collatz.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/21/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation

// should have gotten user input prior to this step

func collatz(inout start: Int, inout steps: Int) -> Int // need to pass in var's, not constants/let's. doing something
    // such as collatz(3,4) will fail.
{
    if start == 1
    {
        return steps
    }
    
    else
    {
        if start % 2 == 0
        {
            start = start / 2
        }
        else
        {
            start = start * 3 + 1
        }
        steps += 1
        return collatz(&start, &steps)
    }
}