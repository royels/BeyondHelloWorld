//
//  Reverse.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/28/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation

func reversing(toChange: String) -> String
{
    let parameterString = Array(toChange)
    let reversed = parameterString.reverse()
    let arr = map(reversed) { s -> String in String(s) }
    return "".join(arr)
}

