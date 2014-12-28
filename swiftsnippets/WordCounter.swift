//
//  WordCounter.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/26/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation



func counter(rawString: String) -> Dictionary<String, Int>
{
    let iter = rawString.lowercaseString.componentsSeparatedByString(" ")
    var store = Dictionary<String, Int>()
    for item in iter
    {
        if var thought = store[item]
        {
            thought++
            var count = store.updateValue(thought, forKey: item)
        }
        else
        {
            store[item] = 1
        }
    }
    return store
}