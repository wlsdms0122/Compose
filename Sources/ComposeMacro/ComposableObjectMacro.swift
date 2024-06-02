//
//  ComposableObjectMacro.swift
//
//
//  Created by jsilver on 6/2/24.
//

import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct ComposableObjectMacro { }

extension ComposableObjectMacro: ExtensionMacro {
    public static func expansion(
        of node: SwiftSyntax.AttributeSyntax,
        attachedTo declaration: some SwiftSyntax.DeclGroupSyntax,
        providingExtensionsOf type: some SwiftSyntax.TypeSyntaxProtocol,
        conformingTo protocols: [SwiftSyntax.TypeSyntax],
        in context: some SwiftSyntaxMacros.MacroExpansionContext
    ) throws -> [SwiftSyntax.ExtensionDeclSyntax] {
        let extenstion = DeclSyntax("""
        extension \(type.trimmed): ObservableObject { }
        """)
        
        return [extenstion.cast(ExtensionDeclSyntax.self)]
    }
}

extension ComposableObjectMacro: MemberAttributeMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingAttributesFor member: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [AttributeSyntax] {
        guard !(member.variable?.isPrivateProperty ?? false) else {
            return []
        }
        
        guard member.variable?.binding?.isObservableStoredProperty ?? false else {
            return []
        }
        
        return [
            AttributeSyntax(
                attributeName: IdentifierTypeSyntax(
                    name: .identifier("Published")
                )
            )
        ]
    }
}

private extension DeclSyntaxProtocol {
    var variable: VariableDeclSyntax? {
        self.as(VariableDeclSyntax.self)
    }
}

private extension VariableDeclSyntax {
    var modifier: DeclModifierSyntax? {
        modifiers.first
    }
    
    var binding: PatternBindingListSyntax.Element? {
        bindings.first
    }
    
    var isPrivateProperty: Bool {
        modifier?.name.text == "private"
    }
}

private extension PatternBindingListSyntax.Element {
    var identifier: IdentifierPatternSyntax? {
        pattern.as(IdentifierPatternSyntax.self)
    }
    
    var isObservableStoredProperty: Bool {
        guard let text = identifier?.identifier.text else { return false }
        
        guard accessorBlock == nil && text != "_register" && text != "_storage" else { return false }
        
        return true
    }
}
