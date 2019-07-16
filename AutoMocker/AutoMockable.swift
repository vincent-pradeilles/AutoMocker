//
//  AutoMockable.swift
//  AutoMockable
//
//  Created by Vincent on 16/07/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

public protocol AutoMockable {
    static func mocked() -> Self
}

extension Int: AutoMockable {
    public static func mocked() -> Int {
        return Int.random(in: 0...Int.max)
    }
}

extension Float: AutoMockable {
    public static func mocked() -> Float {
        return Float.random(in: Float.leastNormalMagnitude...Float.greatestFiniteMagnitude)
    }
}

extension Double: AutoMockable {
    public static func mocked() -> Double {
        return Double.random(in: Double.leastNormalMagnitude...Double.greatestFiniteMagnitude)
    }
}

extension Bool: AutoMockable {
    public static func mocked() -> Bool {
        return Bool.random()
    }
}

extension Character: AutoMockable {
    public static func mocked() -> Character {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        
        return letters.randomElement()!
    }
}

extension String: AutoMockable {
    public static func mocked() -> String {
        let characters = (0...Int.random(in: 0...100)).map { _ in Character.mocked() }
        
        return String(characters)
    }
}

extension Array: AutoMockable where Element: AutoMockable {
    public static func mocked() -> Array<Element> {
        return (0...Int.random(in: 0...100)).map { _ in Element.mocked() }
    }
}

extension Dictionary: AutoMockable where Key: AutoMockable, Value: AutoMockable {
    public static func mocked() -> Dictionary<Key, Value> {
        let pairs = (0...Int.random(in: 0...100)).map { _ in (Key.mocked(), Value.mocked()) }
        
        return Dictionary(uniqueKeysWithValues: pairs)
    }
}
