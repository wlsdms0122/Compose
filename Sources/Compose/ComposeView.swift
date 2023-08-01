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

struct ComposeView1<
    A: ComposableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    private let a: A
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ refresher: Refresher,
        _ a: A,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._refresher = .init(wrappedValue: refresher)
        self.a = a
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView2<
    A: ComposableObject,
    B: ComposableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    private let a: A
    private let b: B
    
    private let content: () -> Content
    
    // MARK: - Initializer
    init(
        _ refresher: Refresher,
        _ a: A,
        _ b: B,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._refresher = .init(wrappedValue: refresher)
        self.a = a
        self.b = b
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView3<
    A: ComposableObject,
    B: ComposableObject,
    C: ComposableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    private let a: A
    private let b: B
    private let c: C
    
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
        self.a = a
        self.b = b
        self.c = c
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView4<
    A: ComposableObject,
    B: ComposableObject,
    C: ComposableObject,
    D: ComposableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    
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
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView5<
    A: ComposableObject,
    B: ComposableObject,
    C: ComposableObject,
    D: ComposableObject,
    E: ComposableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    
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
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView6<
    A: ComposableObject,
    B: ComposableObject,
    C: ComposableObject,
    D: ComposableObject,
    E: ComposableObject,
    F: ComposableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    private let f: F
    
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
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView7<
    A: ComposableObject,
    B: ComposableObject,
    C: ComposableObject,
    D: ComposableObject,
    E: ComposableObject,
    F: ComposableObject,
    G: ComposableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    private let f: F
    private let g: G
    
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
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
        self.g = g
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

struct ComposeView8<
    A: ComposableObject,
    B: ComposableObject,
    C: ComposableObject,
    D: ComposableObject,
    E: ComposableObject,
    F: ComposableObject,
    G: ComposableObject,
    H: ComposableObject,
    Content: View
>: View {
    // MARK: - View
    var body: some View {
        content()
    }
    
    // MARK: - Property
    @ObservedObject
    private var refresher: Refresher
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    private let f: F
    private let g: G
    private let h: H
    
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
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
        self.g = g
        self.h = h
        self.content = content
    }
    
    // MARK: - Public
    
    // MARK: - Private
}

