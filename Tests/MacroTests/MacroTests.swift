//
//  MacroTests.swift
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

final class MacroTests: XCTestCase {
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
                var a: Int = 0
                private var b: Int = 0
            }
            """,
            expandedSource: """
            class Environment {
                @Published
                var a: Int = 0
                private var b: Int = 0
            }

            extension Environment: ObservableObject {
            }
            """,
            macros: testMacros
        )
    }
}
