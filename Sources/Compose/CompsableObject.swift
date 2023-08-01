//
//  CompsableObject.swift
//  
//
//  Created by JSilver on 2023/08/01.
//

import SwiftUI

public protocol ComposableObject { }

public extension ComposableObject {
    @available(iOS 14.0, macOS 11.0, *)
    static func state<ObjectType: ObservableObject>(_ object: ObjectType) -> Self where Self == StateObject<ObjectType> {
        StateObject(wrappedValue: object)
    }
    
    static func observed<ObjectType: ObservableObject>(_ object: ObjectType) -> Self where Self == ObservedObject<ObjectType> {
        ObservedObject(initialValue: object)
    }
}

@available(iOS 14.0, macOS 11.0, *)
extension StateObject: ComposableObject { }

extension ObservedObject: ComposableObject { }
