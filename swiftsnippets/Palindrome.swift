//
//  Palindrome.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/28/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation

func bothWays(function: (String) -> String, param: String) -> String
{
    
    if param == function(param)
    {
        return "YES"
    }
    else
    {
        return "NOPE"
    }
}