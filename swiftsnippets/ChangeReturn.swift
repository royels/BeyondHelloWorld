//
//  ChangeReturn.swift
//  swiftsnippets
//
//  Created by Rohan Yelsangikar on 12/21/14.
//  Copyright (c) 2014 Royels. All rights reserved.
//

import Foundation


func changeReturn(cost: Float, payment: Float) -> Dictionary<String, Float>
{
    let change = payment - cost
    let dollars = change / 1.00
    let quarters = change % 1.00 / 0.25
    let dimes = change % 1.00 % 0.25 / 0.10
    let nickels = change % 1.00 % 0.25 % 0.10 / 0.05
    let pennies = change % 1.00 % 0.25 % 0.10 % 0.05 / 0.01
    return ["dollars": dollars, "quarters":quarters, "dimes":dimes, "nickels":nickels, "pennies":pennies]
    
}
