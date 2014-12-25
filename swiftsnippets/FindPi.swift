//
//  FindPi.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/24/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation


func piFull(places: Int) -> String
{
    if places > 200000
    {
        let places = 200000
    }
  
    let piFul = M_PI
    return piFul.formatting("." + String(places))
}

extension Double // an extension
{
    func formatting(item: String) -> String
    {
        return NSString(format: "%\(item)f", self)
    }
    
}