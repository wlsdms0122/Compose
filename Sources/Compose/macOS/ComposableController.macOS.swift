//
//  ComposableController.macOS.swift
//  
//
//  Created by JSilver on 2023/05/18.
//

import SwiftUI

#if os(macOS)
open class ComposableController: NSHostingController<AnyView> {
    // MARK: - Property
    private let builder: RootViewBuilder
    private let refresher: Refresher
    
    // MARK: - Initializer
    public init(
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        super.init(
            rootView: AnyView(
                ComposeView(
                    refresher
                ) {
                    builder.content()
                }
            )
        )
    }
    
    public init(
        _ content: some View
    ) {
        let builder = RootViewBuilder(content)
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        super.init(
            rootView: AnyView(
                ComposeView(
                    refresher
                ) {
                    builder.content()
                }
            )
        )
    }
    
    public init<
        A: ComposableObject
    >(
        _ a: A,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        super.init(
            rootView: AnyView(
                ComposeView1(
                    refresher,
                    a
                ) {
                    builder.content()
                }
            )
        )
    }
    
    public init<
        A: ComposableObject,
        B: ComposableObject
    >(
        _ a: A,
        _ b: B,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        super.init(
            rootView: AnyView(
                ComposeView2(
                    refresher,
                    a,
                    b
                ) {
                    builder.content()
                }
            )
        )
    }
    
    public init<
        A: ComposableObject,
        B: ComposableObject,
        C: ComposableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        super.init(
            rootView: AnyView(
                ComposeView3(
                    refresher,
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
        A: ComposableObject,
        B: ComposableObject,
        C: ComposableObject,
        D: ComposableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        super.init(
            rootView: AnyView(
                ComposeView4(
                    refresher,
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
        A: ComposableObject,
        B: ComposableObject,
        C: ComposableObject,
        D: ComposableObject,
        E: ComposableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        super.init(
            rootView: AnyView(
                ComposeView5(
                    refresher,
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
        A: ComposableObject,
        B: ComposableObject,
        C: ComposableObject,
        D: ComposableObject,
        E: ComposableObject,
        F: ComposableObject
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        super.init(
            rootView: AnyView(
                ComposeView6(
                    refresher,
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
        A: ComposableObject,
        B: ComposableObject,
        C: ComposableObject,
        D: ComposableObject,
        E: ComposableObject,
        F: ComposableObject,
        G: ComposableObject
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        super.init(
            rootView: AnyView(
                ComposeView7(
                    refresher,
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
        A: ComposableObject,
        B: ComposableObject,
        C: ComposableObject,
        D: ComposableObject,
        E: ComposableObject,
        F: ComposableObject,
        G: ComposableObject,
        H: ComposableObject
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        super.init(
            rootView: AnyView(
                ComposeView8(
                    refresher,
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
    
    // MARK: ObservableObject
    public init<
        A: ObservableObject
    >(
        _ a: A,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(macOS 11.0, *) {
            super.init(
                rootView: AnyView(
                    ComposeView1(
                        refresher,
                        .state(a)
                    ) {
                        builder.content()
                    }
                )
            )
        } else {
            super.init(
                rootView: AnyView(
                    ComposeView1(
                        refresher,
                        .observed(a)
                    ) {
                        builder.content()
                    }
                )
            )
        }
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(macOS 11.0, *) {
            super.init(
                rootView: AnyView(
                    ComposeView2(
                        refresher,
                        .state(a),
                        .state(b)
                    ) {
                        builder.content()
                    }
                )
            )
        } else {
            super.init(
                rootView: AnyView(
                    ComposeView2(
                        refresher,
                        .observed(a),
                        .observed(b)
                    ) {
                        builder.content()
                    }
                )
            )
        }
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(macOS 11.0, *) {
            super.init(
                rootView: AnyView(
                    ComposeView3(
                        refresher,
                        .state(a),
                        .state(b),
                        .state(c)
                    ) {
                        builder.content()
                    }
                )
            )
        } else {
            super.init(
                rootView: AnyView(
                    ComposeView3(
                        refresher,
                        .observed(a),
                        .observed(b),
                        .observed(c)
                    ) {
                        builder.content()
                    }
                )
            )
        }
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(macOS 11.0, *) {
            super.init(
                rootView: AnyView(
                    ComposeView4(
                        refresher,
                        .state(a),
                        .state(b),
                        .state(c),
                        .state(d)
                    ) {
                        builder.content()
                    }
                )
            )
        } else {
            super.init(
                rootView: AnyView(
                    ComposeView4(
                        refresher,
                        .observed(a),
                        .observed(b),
                        .observed(c),
                        .observed(d)
                    ) {
                        builder.content()
                    }
                )
            )
        }
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(macOS 11.0, *) {
            super.init(
                rootView: AnyView(
                    ComposeView5(
                        refresher,
                        .state(a),
                        .state(b),
                        .state(c),
                        .state(d),
                        .state(e)
                    ) {
                        builder.content()
                    }
                )
            )
        } else {
            super.init(
                rootView: AnyView(
                    ComposeView5(
                        refresher,
                        .observed(a),
                        .observed(b),
                        .observed(c),
                        .observed(d),
                        .observed(e)
                    ) {
                        builder.content()
                    }
                )
            )
        }
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(macOS 11.0, *) {
            super.init(
                rootView: AnyView(
                    ComposeView6(
                        refresher,
                        .state(a),
                        .state(b),
                        .state(c),
                        .state(d),
                        .state(e),
                        .state(f)
                    ) {
                        builder.content()
                    }
                )
            )
        } else {
            super.init(
                rootView: AnyView(
                    ComposeView6(
                        refresher,
                        .observed(a),
                        .observed(b),
                        .observed(c),
                        .observed(d),
                        .observed(e),
                        .observed(f)
                    ) {
                        builder.content()
                    }
                )
            )
        }
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(macOS 11.0, *) {
            super.init(
                rootView: AnyView(
                    ComposeView7(
                        refresher,
                        .state(a),
                        .state(b),
                        .state(c),
                        .state(d),
                        .state(e),
                        .state(f),
                        .state(g)
                    ) {
                        builder.content()
                    }
                )
            )
        } else {
            super.init(
                rootView: AnyView(
                    ComposeView7(
                        refresher,
                        .observed(a),
                        .observed(b),
                        .observed(c),
                        .observed(d),
                        .observed(e),
                        .observed(f),
                        .observed(g)
                    ) {
                        builder.content()
                    }
                )
            )
        }
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(macOS 11.0, *) {
            super.init(
                rootView: AnyView(
                    ComposeView8(
                        refresher,
                        .state(a),
                        .state(b),
                        .state(c),
                        .state(d),
                        .state(e),
                        .state(f),
                        .state(g),
                        .state(h)
                    ) {
                        builder.content()
                    }
                )
            )
        } else {
            super.init(
                rootView: AnyView(
                    ComposeView8(
                        refresher,
                        .observed(a),
                        .observed(b),
                        .observed(c),
                        .observed(d),
                        .observed(e),
                        .observed(f),
                        .observed(g),
                        .observed(h)
                    ) {
                        builder.content()
                    }
                )
            )
        }
    }
    
    @MainActor
    public required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    // MARK: - Public
    public func run(@ViewBuilder _ content: @escaping () -> some View) {
        builder.setContent(content)
        refresher.refresh()
    }
    
    // MARK: - Private
}

public extension ComposableController {
    func run(_ content: some View) {
        run { content }
    }
}
#endif
