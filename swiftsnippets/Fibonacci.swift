    //
//  Fibonacci.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/23/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation

    
func fibo(limit: Int) -> [Int]
{
    var element = [0,1]
    for num in 2...limit - 1
    {
        element.append(element[element.count - 1] + element[element.count - 2])
    }
    
    return element
    
}