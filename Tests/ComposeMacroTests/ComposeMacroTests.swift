//
//  ComposeMacroTests.swift
//
//
//  Created by jsilver on 6/2/24.
//

import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
@testable import ComposeMacro

let testMacros: [String: Macro.Type] = [
    "ComposableObject": ComposableObjectMacro.self,
]

final class ComposeMacroTests: XCTestCase {
    // MARK: - Property
    
    // MARK: - Lifecycle
    override func setUp() {
        
    }
    
    override func tearDown() {
        
    }
    
    // MARK: - Test
    func test_that_reduce_macro_expand_source() {
        assertMacroExpansion(
            """
            @ComposableObject
            class Environment {
                public var a: Int = 0
                var b: Int = 0
                private(set) var c: Int = 0
                private var d: Int = 0
            }
            """,
            expandedSource: """
            class Environment {
                @Published
                public var a: Int = 0
                @Published
                var b: Int = 0
                @Published
                private(set) var c: Int = 0
                private var d: Int = 0
            }

            extension Environment: ObservableObject {
            }
            """,
            macros: testMacros
        )
    }
}
