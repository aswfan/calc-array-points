//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 4/3/17.
//  Copyright © 2017 com.imyyfan. All rights reserved.
//

import Foundation


//basic Func
func add(left: Int?, right: Int?) -> Int? {
    if let a = left, let b = right {
        return a + b
    }else {
        return nil
    }
}

func subtract(left: Int?, right: Int?) -> Int? {
    if let a = left, let b = right {
        return a - b
    }else {
        return nil
    }
}

func multiply(left: Int?, right: Int?) -> Int? {
    if let a = left, let b = right {
        return a * b
    }else {
        return nil
    }
}

func divide(left: Int?, right: Int?) -> Int? {
    if let a = left, let b = right {
        return a / b
    }else {
        return nil
    }
}

func mathOperation(left: Int?, right: Int?, operation: (Int?, Int?) -> Int? ) -> Int? {
    var result: Int? = nil
    
    result = operation(left, right)
//    if operation == "add" {
//        result = add(left: left, right: right)
//    }else if operation == "subtract" {
//        result = subtract(left: left, right: right)
//    }else if operation == "multiply" {
//        result = multiply(left: left, right: right)
//    }else if operation == "divide" {
//        if right == 0 {
//            print("Illegal Input: int division by 0")
//        }else {
//            result = divide(left: left, right: right)
//        }
//    }else{
//        print("Illegal Input: Illegal operation")
//    }
    
    
    return result
}

//Array Func
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

func mathOperation(array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array)
}

/*
var a = [1, 2, 3, 4, 5]
print(mathOperation(array: a, operation: add))
*/

//Points Func
func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}


/*
var a: (Int?, Int?) = (1, 2)
var b: (Int?, Int?) = (2, 3)
var c: (Int?, Int?) = (1, nil)
print(add(p1: a, p2: b))
print(subtract(p1: a, p2: c))
 */

//Dictionary Func
func add(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int]? {
    var result: [String: Int] = [:]
    if let m = p1, let n = p2 {
        if let a = m["x"], let b = n["x"] {
            result["x"] = a + b
        }
        if let a = m["y"], let b = n["y"] {
            result["y"] = a + b
        }
        return result
    }
    return nil
}

func subtract(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int]? {
    var result: [String: Int] = [:]
    if let m = p1, let n = p2 {
        if let a = m["x"], let b = n["x"] {
            result["x"] = a - b
        }
        if let a = m["y"], let b = n["y"] {
            result["y"] = a - b
        }
        return result
    }
    return nil
}

func add(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    var result: [String: Double] = [:]
    if let m = p1, let n = p2 {
        if let a = m["x"], let b = n["x"] {
            result["x"] = a + b
        }
        if let a = m["y"], let b = n["y"] {
            result["y"] = a + b
        }
        return result
    }
    return nil
}

func subtract(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    var result: [String: Double] = [:]
    if let m = p1, let n = p2 {
        if let a = m["x"], let b = n["x"] {
            result["x"] = a - b
        }
        if let a = m["y"], let b = n["y"] {
            result["y"] = a - b
        }
        return result
    }
    return nil
}




















