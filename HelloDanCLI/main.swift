//
//  main.swift
//  HelloDanCLI
//
//  Created by Dan Ofer on 2025-12-24.
//

import Foundation

var name = "Dan"
func getName(name: String, instances: UInt8 = 1) -> String {
    if instances <= 1 {
        return name
    }

    var names: [String] = []

    for _ in 1...instances {
        names.append(name)
    }

    if 1 < instances - 1 {
        print("Oops, cannot remove the second element because there is only one element")
    }
    names.remove(at: 1)

    return names.joined(separator: ", ")
}

print("Hello, World! \(name) \(name) " + name)
var names = getName(name: "Dan", instances: 4)

print("Hello \(names)")
