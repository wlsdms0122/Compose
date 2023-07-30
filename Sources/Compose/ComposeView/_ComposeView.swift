//
//  _ComposeView.swift
//
//
//  Created by JSilver on 2023/02/04.
//

import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
struct _ComposeView<
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ refresher: Refresher,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._refresher = .init(wrappedValue: refresher)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

@available(iOS 13.0, macOS 10.15, *)
struct _ComposeView1<
    A: ObservableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    @ObservedObject
    private var a: A
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ refresher: Refresher,
        _ a: A,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._refresher = .init(wrappedValue: refresher)
        self._a = .init(wrappedValue: a)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

@available(iOS 13.0, macOS 10.15, *)
struct _ComposeView2<
    A: ObservableObject,
    B: ObservableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    @ObservedObject
    private var a: A
    @ObservedObject
    private var b: B
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ refresher: Refresher,
        _ a: A,
        _ b: B,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._refresher = .init(wrappedValue: refresher)
        self._a = .init(wrappedValue: a)
        self._b = .init(wrappedValue: b)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

@available(iOS 13.0, macOS 10.15, *)
struct _ComposeView3<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    @ObservedObject
    private var a: A
    @ObservedObject
    private var b: B
    @ObservedObject
    private var c: C
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ refresher: Refresher,
        _ a: A,
        _ b: B,
        _ c: C,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._refresher = .init(wrappedValue: refresher)
        self._a = .init(wrappedValue: a)
        self._b = .init(wrappedValue: b)
        self._c = .init(wrappedValue: c)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

@available(iOS 13.0, macOS 10.15, *)
struct _ComposeView4<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    D: ObservableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    @ObservedObject
    private var a: A
    @ObservedObject
    private var b: B
    @ObservedObject
    private var c: C
    @ObservedObject
    private var d: D
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ refresher: Refresher,
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._refresher = .init(wrappedValue: refresher)
        self._a = .init(wrappedValue: a)
        self._b = .init(wrappedValue: b)
        self._c = .init(wrappedValue: c)
        self._d = .init(wrappedValue: d)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

@available(iOS 13.0, macOS 10.15, *)
struct _ComposeView5<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    D: ObservableObject,
    E: ObservableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    @ObservedObject
    private var a: A
    @ObservedObject
    private var b: B
    @ObservedObject
    private var c: C
    @ObservedObject
    private var d: D
    @ObservedObject
    private var e: E
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ refresher: Refresher,
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._refresher = .init(wrappedValue: refresher)
        self._a = .init(wrappedValue: a)
        self._b = .init(wrappedValue: b)
        self._c = .init(wrappedValue: c)
        self._d = .init(wrappedValue: d)
        self._e = .init(wrappedValue: e)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

@available(iOS 13.0, macOS 10.15, *)
struct _ComposeView6<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    D: ObservableObject,
    E: ObservableObject,
    F: ObservableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    @ObservedObject
    private var a: A
    @ObservedObject
    private var b: B
    @ObservedObject
    private var c: C
    @ObservedObject
    private var d: D
    @ObservedObject
    private var e: E
    @ObservedObject
    private var f: F
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ refresher: Refresher,
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._refresher = .init(wrappedValue: refresher)
        self._a = .init(wrappedValue: a)
        self._b = .init(wrappedValue: b)
        self._c = .init(wrappedValue: c)
        self._d = .init(wrappedValue: d)
        self._e = .init(wrappedValue: e)
        self._f = .init(wrappedValue: f)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

@available(iOS 13.0, macOS 10.15, *)
struct _ComposeView7<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    D: ObservableObject,
    E: ObservableObject,
    F: ObservableObject,
    G: ObservableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    @ObservedObject
    private var a: A
    @ObservedObject
    private var b: B
    @ObservedObject
    private var c: C
    @ObservedObject
    private var d: D
    @ObservedObject
    private var e: E
    @ObservedObject
    private var f: F
    @ObservedObject
    private var g: G
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ refresher: Refresher,
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F,
        _ g: G,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._refresher = .init(wrappedValue: refresher)
        self._a = .init(wrappedValue: a)
        self._b = .init(wrappedValue: b)
        self._c = .init(wrappedValue: c)
        self._d = .init(wrappedValue: d)
        self._e = .init(wrappedValue: e)
        self._f = .init(wrappedValue: f)
        self._g = .init(wrappedValue: g)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

@available(iOS 13.0, macOS 10.15, *)
struct _ComposeView8<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    D: ObservableObject,
    E: ObservableObject,
    F: ObservableObject,
    G: ObservableObject,
    H: ObservableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    @ObservedObject
    private var a: A
    @ObservedObject
    private var b: B
    @ObservedObject
    private var c: C
    @ObservedObject
    private var d: D
    @ObservedObject
    private var e: E
    @ObservedObject
    private var f: F
    @ObservedObject
    private var g: G
    @ObservedObject
    private var h: H
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ refresher: Refresher,
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F,
        _ g: G,
        _ h: H,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._refresher = .init(wrappedValue: refresher)
        self._a = .init(wrappedValue: a)
        self._b = .init(wrappedValue: b)
        self._c = .init(wrappedValue: c)
        self._d = .init(wrappedValue: d)
        self._e = .init(wrappedValue: e)
        self._f = .init(wrappedValue: f)
        self._g = .init(wrappedValue: g)
        self._h = .init(wrappedValue: h)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

