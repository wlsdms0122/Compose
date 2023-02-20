//
//  ComposableController.swift
//
//
//  Created by JSilver on 2023/02/04.
//

import SwiftUI

class RootViewBuilder {
    private(set) var content: () -> AnyView
    
    init(_ content: @escaping () -> some View) {
        self.content = { AnyView(content()) }
    }
    
    func setcontent(_ content: @escaping () -> some View) {
        self.content = { AnyView(content()) }
    }
}

open class ComposableController: UIHostingController<AnyView> {
    // MARK: - Property
    private let builder: RootViewBuilder
    
    // MARK: - Initializer
    public init(
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposeView {
                    builder.content()
                }
            )
        )
    }
    
    public init<
        A: ObservableObject
    >(
        _ a: A,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposeView1(
                    a
                ) {
                    builder.content()
                }
            )
        )
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject
    >(
        _ a: A,
        _ b: B,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposeView2(
                    a,
                    b
                ) {
                    builder.content()
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
        _ c: C,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposeView3(
                    a,
                    b,
                    c
                ) {
                    builder.content()
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
        _ d: D,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposeView4(
                    a,
                    b,
                    c,
                    d
                ) {
                    builder.content()
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
        _ e: E,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposeView5(
                    a,
                    b,
                    c,
                    d,
                    e
                ) {
                    builder.content()
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
        _ f: F,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposeView6(
                    a,
                    b,
                    c,
                    d,
                    e,
                    f
                ) {
                    builder.content()
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
        _ g: G,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposeView7(
                    a,
                    b,
                    c,
                    d,
                    e,
                    f,
                    g
                ) {
                    builder.content()
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
        _ h: H,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        self.builder = builder
        
        super.init(
            rootView: AnyView(
                ComposeView8(
                    a,
                    b,
                    c,
                    d,
                    e,
                    f,
                    g,
                    h
                ) {
                    builder.content()
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
        builder.setcontent(content)
    }
    
    // MARK: - Private
}

public extension ComposableController {
    convenience init(
        _ content: some View
    ) {
        self.init {
            content
        }
    }
    
    convenience init<
        A: ObservableObject
    >(
        _ a: A,
        _ content: some View
    ) {
        self.init(a) {
            content
        }
    }
    
    convenience init<
        A: ObservableObject,
        B: ObservableObject
    >(
        _ a: A,
        _ b: B,
        _ content: some View
    ) {
        self.init(
            a,
            b
        ) {
            content
        }
    }
    
    convenience init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        _ content: some View
    ) {
        self.init(
            a,
            b,
            c
        ) {
            content
        }
    }
    
    convenience init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject,
        D: ObservableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ content: some View
    ) {
        self.init(
            a,
            b,
            c,
            d
        ) {
            content
        }
    }
    
    convenience init<
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
        _ e: E,
        _ content: some View
    ) {
        self.init(
            a,
            b,
            c,
            d,
            e
        ) {
            content
        }
    }
    
    convenience init<
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
        _ f: F,
        _ content: some View
    ) {
        self.init(
            a,
            b,
            c,
            d,
            e,
            f
        ) {
            content
        }
    }
    
    convenience init<
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
        _ g: G,
        _ content: some View
    ) {
        self.init(
            a,
            b,
            c,
            d,
            e,
            f,
            g
        ) {
            content
        }
    }
    
    convenience init<
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
        _ h: H,
        _ content: some View
    ) {
        self.init(
            a,
            b,
            c,
            d,
            e,
            f,
            g,
            h
        ) {
            content
        }
    }
    
    func run(_ content: some View) {
        run { content }
    }
}
