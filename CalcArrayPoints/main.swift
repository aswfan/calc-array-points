//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 4/3/17.
//  Copyright © 2017 com.imyyfan. All rights reserved.
//

import Foundation

extension String
{
    func trim() -> String
    {
        return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
}

func add(a: Int, b: Int) -> (Bool, Int) {
    return (true, a + b)
}

func sub(a: Int, b: Int) -> (Bool, Int) {
    return (true, a - b)
}

func mul(a: Int, b: Int) -> (Bool, Int) {
    return (true, a * b)
}

func div(a: Int, b: Int) -> (Bool, Int) {
    if b == 0 {
        print("Illegal input: Int division by zero")
        return (false, 0)
    }
    return (true, a / b)
}

func basic(a: Int, b: Int, c: String) -> Int {
    var result = 0
    var bool = true
    
    if c == "-" {
        result = sub(a: a, b: b).1
    }else if c == "+" {
        result = add(a: a, b: b).1
    }else if c == "*" {
        result = mul(a: a, b: b).1
    }else if c == "/" {
        (bool, result) = div(a: a, b: b)
        if !bool {
            
        }
    }
    return result
}

var s = "1"
var t: Int = Int(s)




