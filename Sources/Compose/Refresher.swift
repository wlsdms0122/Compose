//
//  Refresher.swift
//  
//
//  Created by JSilver on 2023/07/05.
//

import Foundation

class Refresher: ObservableObject {
    // MARK: - Property
    
    // MARK: - Initializer
    
    // MARK: - Public
    func refresh() {
        objectWillChange.send()
    }
    
    // MARK: - Private
}
