//
//  Plugin.swift
//
//
//  Created by jsilver on 6/2/24.
//

import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct Plugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        ComposableObjectMacro.self
    ]
}
