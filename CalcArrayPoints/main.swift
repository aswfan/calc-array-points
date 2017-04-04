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

func add(left: Int, right: Int) -> Int {
    return left + right
}

func subtract(left: Int, right: Int) -> Int {
    return left - right
}

func multiply(left: Int, right: Int) -> Int {
    return left * right
}

func divide(left: Int, right: Int) -> Int {
    return left / right
}

func mathOperation(left: Int, right: Int, operation: String) -> Int {
    var result = 0
    
    if operation == "add" {
        result = add(left: left, right: right)
    }else if operation == "subtract" {
        result = subtract(left: left, right: right)
    }else if operation == "multiply" {
        result = multiply(left: left, right: right)
    }else if operation == "divide" {
        if right == 0 {
            print("Illegal Input: int division by 0")
        }else {
            result = divide(left: left, right: right)
        }
    }else{
        print("Illegal Input: Illegal operation")
    }
    
    
    return result
}

func add(array: [Int]) -> Int {
    var sum = 0
    for num in array {
        sum += num
    }
    return sum
}

func multiply(array: [Int]) -> Int {
    var result = 1
    for num in array {
        result *= num
    }
    return result
}

func average(array: [Int]) -> Int {
    var ave = 0
    for num in array {
        ave += num
    }
    return ave/array.count
}

func count(array: [Int]) -> Int {
    return array.count
}






























