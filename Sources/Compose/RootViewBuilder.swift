//
//  RootViewBuilder.swift
//  
//
//  Created by JSilver on 2023/05/18.
//

import SwiftUI

class RootViewBuilder {
    // MARK: - Property
    private(set) var content: () -> AnyView
    
    // MARK: - Initializer
    init(_ content: @escaping () -> some View) {
        self.content = { AnyView(content()) }
    }
    
    // MARK: - Public
    func setContent(_ content: @escaping () -> some View) {
        self.content = { AnyView(content()) }
    }
    
    // MARK: - Private
}
