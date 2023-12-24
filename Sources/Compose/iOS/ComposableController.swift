//
//  ComposableController.swift
//
//
//  Created by JSilver on 2023/02/04.
//

import SwiftUI

#if os(iOS)
open class ComposableController: UIHostingController<AnyView> {
    // MARK: - Property
    private let builder: RootViewBuilder
    private let refresher: Refresher
    
    // MARK: - Initializer
    public init(
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
    }
    
    public init(
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
    }
    
    public init<
        A: ComposableObject
    >(
        _ a: A,
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
    }
    
    public init<
        A: ComposableObject,
        B: ComposableObject
    >(
        _ a: A,
        _ b: B,
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
    }
    
    public init<
        A: ComposableObject,
        B: ComposableObject,
        C: ComposableObject
    >(
        _ a: A,
        _ b: B,
        _ c: C,
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
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
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
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
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
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
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
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
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
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
        disableSafeArea: Bool = false,
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
        
        _disableSafeArea = disableSafeArea
    }
    
    // MARK: ObservableObject
    public init<
        A: ObservableObject
    >(
        _ a: A,
        disableSafeArea: Bool = false,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let builder = RootViewBuilder(content)
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(iOS 14.0, *) {
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(iOS 14.0, *) {
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(iOS 14.0, *) {
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(iOS 14.0, *) {
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(iOS 14.0, *) {
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(iOS 14.0, *) {
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(iOS 14.0, *) {
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
        let refresher = Refresher()
        
        self.builder = builder
        self.refresher = refresher
        
        if #available(iOS 14.0, *) {
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
        
        _disableSafeArea = disableSafeArea
    }
    
    @MainActor
    public required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
    }
    
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        // Invalidate intrinsic content size when root view's layout changed.
        view.invalidateIntrinsicContentSize()
    }
    
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
