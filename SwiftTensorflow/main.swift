//
//  main.swift
//  SwiftTensorflow
//
//  Created by Ramill Ibragimov on 21.01.2021.
//

import Foundation
import PythonKit
import Python

PythonLibrary.useVersion(3)

let np: PythonObject = Python.import("numpy")
let x = np.array([1, 4, 2, 5], dtype: np.float32)
let y = np.array([5, 2, 4, 1], dtype: np.float32)

print(x * y)


let myNamePy: PythonObject = "Rahul Bhalley"
print("myNamePy Swift type: \(type(of: myNamePy))")
print("myNamePy Python type: \(Python.type(myNamePy))")

var firstNumber: PythonObject = 30
var secondNumber: PythonObject = 6
let result = secondNumber / firstNumber
print("The result is \(result).")
print("Swift type is \(type(of: result)).")
print("Python type is \(Python.type(result)).")

// Conversion from Swift to Python type
let swiftFive: Int = 5 // Swift Int value
let pyFive = PythonObject(swiftFive) // Python int value
print("Python type of pyFive is \(Python.type(pyFive)).")
print("Swift type of pyFive is \(type(of: pyFive)).")
// Conversion from Python to Swift type
let pyDescription: PythonObject = "Python interoperability feature is beautiful!" // Python str type

let swiftDescription = "Swift’s \(String(describing: pyDescription))" 
print("swiftDescription (conversion accomplished!): \(swiftDescription)")




