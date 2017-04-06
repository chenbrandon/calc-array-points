//
//  main.swift
//  CalcArrayPoints
//
//  Created by Brandon Chen on 4/5/17.
//  Copyright © 2017 Brandon Chen. All rights reserved.
//

import Foundation


// Calculator
func add(left: Int?, right: Int?) -> Int {
    if let a = left, let b = right {
        return(a + b)
    } else {
        print("nil values, returning 0")
        return 0
    }
}
func subtract(left: Int?, right: Int?) -> Int {
    if let a = left, let b = right {
        return(a - b)
    } else {
        print("nil values, returning 0")
        return 0
    }
}
func multiply(left: Int?, right: Int?) -> Int {
    if let a = left, let b = right {
        return(a * b)
    } else {
        print("nil values, returning 0")
        return 0
    }
}
func divide(left: Int?, right: Int?) -> Int {
    if let a = left, let b = right {
        return(a / b)
    } else {
        print("nil values, returning 0")
        return 0
    }
}

// generic math operation
func mathOperation(left: Int?, right: Int?, operation: ((Int?, Int?) -> (Int))?) -> Int{
    if let o = operation {
        return o(left, right);
    } else {
        print("invalid operation, returning 0")
        return 0
    }
}



// Array Fun
func add(array: [Int?]?) -> Int {
    var sum: Int = 0
    if let a = array {
        for i in a {
            if let x = i {
                sum += x
            } else {
                print("bad value found. returning current sum")
                return sum
            }
        }
    }
    return sum
        
}

func multiply(array: [Int?]?) -> Int {
    var sum: Int = 1
    if let a = array {
        for i in a {
            if let x = i {
                sum *= x
            } else {
                print("bad value found. returning current product")
                return sum
            }
        }
    }
    return sum
}

func count(array: [Int?]?) -> Int {
    if let a = array {
        return a.count
    } else {
        print("nil passed, returning 0")
        return 0
    }
}

func average(array: [Int?]?) -> Int {
    var sum = 0
    if let a = array {
        let count = a.count
        for i in a {
            if let x = i {
                sum += x
            } else {
                print("nil value found. returning current sum divided by total numbers")
                return count == 0 ? 0 : (sum / count)
            }
        }
        return count == 0 ? 0 : (sum / count)
    }
    return 0
}

// generic math operation
func reduce(array: [Int?]?, operation: (([Int?]?) -> Int)?) -> Int {
    if let o = operation {
        return o(array)
    } else {
        print("invalid operation, returning 0")
        return 0
    }
}

// Points

// tuples
func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return(p1.0 - p2.0, p1.1 - p2.1)
}

func add(p: (Int?, Int?)?...) -> (Int, Int) {
    var a = 0
    var b = 0
    for i in p {
        if let i = i {
            if let x = i.0, let y = i.1 {
                a += x
                b += y
            }
        }
    }
    return (a, b)
}
func subtract(p: (Int?, Int?)?...) -> (Int, Int) {
    var a = 0
    var b = 0
    for i in p {
        if let i = i {
            if let x = i.0, let y = i.1 {
                a -= x
                b -= y
            }
        }
    }
    return (a, b)
}

// dictionary
func add(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int] {
    var x = 0
    var y = 0
    if let p1 = p1, let p2 = p2 {
        if let a = p1["x"], let b = p2["x"], let c = p1["y"], let d = p2["y"] { // check if non nil
        x = a + b
        y = c + d
        } else {
            print("bad values")
        }
    } else {
        print("passed in nil")
    }
    return ["x" : x, "y" : y]
}
func subtract(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int] {
    var x = 0
    var y = 0
    if let p1 = p1, let p2 = p2 {
        if let a = p1["x"], let b = p2["x"], let c = p1["y"], let d = p2["y"] { // check if non nil
            x = a - b
            y = c - d
        } else {
            print("bad values")
        }
    } else {
        print("passed in nil")
    }
    return ["x" : x, "y" : y]
}
// handle dictionary with double values
func add(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double] {
    var x: Double = 0
    var y: Double = 0
    if let p1 = p1, let p2 = p2 {
        if let a = p1["x"], let b = p2["x"], let c = p1["y"], let d = p2["y"] { // check if non nil
            x = a + b
            y = c + d
        } else {
            print("bad values")
        }
    } else {
        print("passed in nil")
    }
    return ["x" : x, "y" : y]
}
func subtract(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double] {
    var x: Double = 0
    var y: Double = 0
    if let p1 = p1, let p2 = p2 {
        if let a = p1["x"], let b = p2["x"], let c = p1["y"], let d = p2["y"] { // check if non nil
            x = a - b
            y = c - d
        } else {
            print("bad values")
        }
    } else {
        print("passed in nil")
    }
    return ["x" : x, "y" : y]
}

/*
 var x = (1,3)
 var y = (2,4)
 print(add(p1: x,p2: y))
 var xd = ["x" : 3, "y" : 4]
 var yd = ["x" : 5, "y" : -4]
 print(add(p1: xd, p2: yd))
 var xd2 = ["notx" : 3, "y" : 4]
 var yd2 = ["x" : 4, "noty": 9]
 print(add(p1: xd2, p2: yd2))
 var xd3 = ["x" : -3.3, "y" : 0.4]
 var yd3 = ["x" : 5.33, "y" : -4.9]
 print(add(p1: xd3, p2: yd3))
 */
