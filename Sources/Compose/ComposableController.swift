//
//  ComposableController.swift
//
//
//  Created by JSilver on 2023/02/04.
//

import SwiftUI

class RootViewBuilder {
    var body: (() -> AnyView)?
}

open class ComposableController: UIHostingController<AnyView> {
    // MARK: - Property
    private let builder: RootViewBuilder
    
    // MARK: - Initializer
    public init() {
        let builder = RootViewBuilder()
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposableView {
                    builder.body?()
                }
            )
        )
    }
    
    public init<A: ObservableObject>(
        _ a: A
    ) {
        let builder = RootViewBuilder()
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposableView1(
                    a
                ) {
                    builder.body?()
                }
            )
        )
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject
    >(
        _ a: A,
        _ b: B
    ) {
        let builder = RootViewBuilder()
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposableView2(
                    a,
                    b
                ) {
                    builder.body?()
                }
            )
        )
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C
    ) {
        let builder = RootViewBuilder()
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposableView3(
                    a,
                    b,
                    c
                ) {
                    builder.body?()
                }
            )
        )
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject,
        D: ObservableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D
    ) {
        let builder = RootViewBuilder()
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposableView4(
                    a,
                    b,
                    c,
                    d
                ) {
                    builder.body?()
                }
            )
        )
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject,
        D: ObservableObject,
        E: ObservableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E
    ) {
        let builder = RootViewBuilder()
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposableView5(
                    a,
                    b,
                    c,
                    d,
                    e
                ) {
                    builder.body?()
                }
            )
        )
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject,
        D: ObservableObject,
        E: ObservableObject,
        F: ObservableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F
    ) {
        let builder = RootViewBuilder()
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposableView6(
                    a,
                    b,
                    c,
                    d,
                    e,
                    f
                ) {
                    builder.body?()
                }
            )
        )
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject,
        D: ObservableObject,
        E: ObservableObject,
        F: ObservableObject,
        G: ObservableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F,
        _ g: G
    ) {
        let builder = RootViewBuilder()
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposableView7(
                    a,
                    b,
                    c,
                    d,
                    e,
                    f,
                    g
                ) {
                    builder.body?()
                }
            )
        )
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject,
        D: ObservableObject,
        E: ObservableObject,
        F: ObservableObject,
        G: ObservableObject,
        H: ObservableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F,
        _ g: G,
        _ h: H
    ) {
        let builder = RootViewBuilder()
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposableView8(
                    a,
                    b,
                    c,
                    d,
                    e,
                    f,
                    g,
                    h
                ) {
                    builder.body?()
                }
            )
        )
    }
    
    @MainActor
    public required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    // MARK: - Public
    public func run(@ViewBuilder _ content: @escaping () -> some View) {
        builder.body = {
            AnyView(content())
        }
    }
    
    // MARK: - Private
}
