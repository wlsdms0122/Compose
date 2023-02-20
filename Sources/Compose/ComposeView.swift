//
//  ComposeView.swift
//
//
//  Created by JSilver on 2023/02/04.
//

import SwiftUI

struct ComposeView<
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView1<
    A: ObservableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @StateObject
    private var a: A
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ a: A,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._a = .init(wrappedValue: a)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView2<
    A: ObservableObject,
    B: ObservableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @StateObject
    private var a: A
    @StateObject
    private var b: B
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ a: A,
        _ b: B,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._a = .init(wrappedValue: a)
        self._b = .init(wrappedValue: b)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView3<
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
    @StateObject
    private var a: A
    @StateObject
    private var b: B
    @StateObject
    private var c: C
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ a: A,
        _ b: B,
        _ c: C,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._a = .init(wrappedValue: a)
        self._b = .init(wrappedValue: b)
        self._c = .init(wrappedValue: c)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView4<
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
    @StateObject
    private var a: A
    @StateObject
    private var b: B
    @StateObject
    private var c: C
    @StateObject
    private var d: D
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._a = .init(wrappedValue: a)
        self._b = .init(wrappedValue: b)
        self._c = .init(wrappedValue: c)
        self._d = .init(wrappedValue: d)
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView5<
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
    @StateObject
    private var a: A
    @StateObject
    private var b: B
    @StateObject
    private var c: C
    @StateObject
    private var d: D
    @StateObject
    private var e: E
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        @ViewBuilder content: @escaping () -> Content
    ) {
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

struct ComposeView6<
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
    @StateObject
    private var a: A
    @StateObject
    private var b: B
    @StateObject
    private var c: C
    @StateObject
    private var d: D
    @StateObject
    private var e: E
    @StateObject
    private var f: F
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F,
        @ViewBuilder content: @escaping () -> Content
    ) {
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

struct ComposeView7<
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
    @StateObject
    private var a: A
    @StateObject
    private var b: B
    @StateObject
    private var c: C
    @StateObject
    private var d: D
    @StateObject
    private var e: E
    @StateObject
    private var f: F
    @StateObject
    private var g: G
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F,
        _ g: G,
        @ViewBuilder content: @escaping () -> Content
    ) {
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

struct ComposeView8<
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
    @StateObject
    private var a: A
    @StateObject
    private var b: B
    @StateObject
    private var c: C
    @StateObject
    private var d: D
    @StateObject
    private var e: E
    @StateObject
    private var f: F
    @StateObject
    private var g: G
    @StateObject
    private var h: H
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
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

