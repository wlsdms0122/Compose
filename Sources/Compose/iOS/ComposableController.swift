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
                ComposeView(refresher) {
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
    
    @MainActor
    public required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
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
#endif
