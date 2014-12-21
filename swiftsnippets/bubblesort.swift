//
//  bubblesort.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/21/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation

var test: [Int] = [5,2,1,3,7,3,2,4,10,23,43,1233,34,6,4]
func bubbleSort(inout toSort: [Int]) -> [Int] // add inout to inform compiler there will be changes made to the parameter.
{
    for number in 0...(toSort.count - 2)
    {
        for secondary in 0...(toSort.count - number - 2) // this was a rather strange error. It took me a while to figure out that for-in loops in swift execute the very last index too, unlike other languages like python and java.
        {
            var sec = toSort[secondary]
            var mex = toSort[Int(secondary) + Int(1)]
            if  sec > mex
            {
                var temp = toSort[secondary]
                toSort[secondary] = toSort[secondary + 1]
                toSort[secondary + 1] = temp
            }
            
        }
    }
    return toSort
    
}