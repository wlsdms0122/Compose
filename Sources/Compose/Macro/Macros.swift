//
//  Macros.swift
//
//
//  Created by jsilver on 6/2/24.
//

import Foundation

@attached(memberAttribute)
@attached(extension, conformances: ObservableObject)
public macro ComposableObject() = #externalMacro(module: "ComposeMacro", type: "ComposableObjectMacro")
