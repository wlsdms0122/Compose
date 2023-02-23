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
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
    }
    
    public init<
        A: ObservableObject
    >(
        _ a: A,
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject
    >(
        _ a: A,
        _ b: B,
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
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
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
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
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
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
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
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
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
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
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
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
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            disableSafeArea: disableSafeArea
        ) {
            content
        }
    }
    
    convenience init<
        A: ObservableObject
    >(
        _ a: A,
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            a,
            disableSafeArea: disableSafeArea
        ) {
            content
        }
    }
    
    convenience init<
        A: ObservableObject,
        B: ObservableObject
    >(
        _ a: A,
        _ b: B,
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            a,
            b,
            disableSafeArea: disableSafeArea
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
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            a,
            b,
            c,
            disableSafeArea: disableSafeArea
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
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            a,
            b,
            c,
            d,
            disableSafeArea: disableSafeArea
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
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            a,
            b,
            c,
            d,
            e,
            disableSafeArea: disableSafeArea
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
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            a,
            b,
            c,
            d,
            e,
            f,
            disableSafeArea: disableSafeArea
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
        disableSafeArea: Bool = false,
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
            disableSafeArea: disableSafeArea
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
        disableSafeArea: Bool = false,
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
            h,
            disableSafeArea: disableSafeArea
        ) {
            content
        }
    }
    
    func run(_ content: some View) {
        run { content }
    }
}
