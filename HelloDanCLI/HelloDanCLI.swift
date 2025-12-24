//
//  main.swift
//  HelloDanCLI
//
//  Created by Dan Ofer on 2025-12-24.
//

import ArgumentParser
import Foundation

@main
struct GetHelloWorldCLI: ParsableCommand {
    @Option(help: "Your given name (Required)")
    var name: String

    @Option(help: "How many times to repeat your name")
    var iterations: UInt8 = 1

    func run() {
        let names = getName(name: name, instances: iterations)

        print("Hello \(names)")
    }
}

func getName(name: String, instances: UInt8 = 1) -> String {
    if instances <= 1 {
        return name
    }

    let removeAtIndex = 1
    var names: [String] = []

    for _ in 1...instances {
        names.append(name)
    }

    if removeAtIndex >= instances - 1 {
        let count = names.count
        if count == 1 {
            print(
                "Oops, cannot remove element at index \(removeAtIndex), because there is only \(count) element"
            )
        } else {
            print(
                "Oops, cannot remove element at index \(removeAtIndex), because there are only \(count) elements"
            )
        }
    } else {
        names.remove(at: removeAtIndex)
    }

    return names.joined(separator: ", ")
}

// var names = getName(name: "Dan", instances: 1)
//
// print("Hello \(names)")
