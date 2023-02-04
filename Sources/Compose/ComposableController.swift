//
//  ComposableController.swift
//
//
//  Created by JSilver on 2023/02/04.
//

import SwiftUI

open class ComposableController: UIHostingController<AnyView> {
    // MARK: - Property
    
    // MARK: - Initializer
    public init<A: ObservableObject>(
        _ a: A,
        @ViewBuilder content: @escaping () -> some View
    ) {
        super.init(
            rootView: AnyView(
                ComposableView(
                    a,
                    content: content
                )
            )
        )
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject
    >(
        _ a: A,
        _ b: B,
        @ViewBuilder content: @escaping () -> some View
    ) {
        super.init(
            rootView: AnyView(
                ComposableView2(
                    a,
                    b,
                    content: content
                )
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
        @ViewBuilder content: @escaping () -> some View
    ) {
        super.init(
            rootView: AnyView(
                ComposableView3(
                    a,
                    b,
                    c,
                    content: content
                )
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
        @ViewBuilder content: @escaping () -> some View
    ) {
        super.init(
            rootView: AnyView(
                ComposableView4(
                    a,
                    b,
                    c,
                    d,
                    content: content
                )
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
        @ViewBuilder content: @escaping () -> some View
    ) {
        super.init(
            rootView: AnyView(
                ComposableView5(
                    a,
                    b,
                    c,
                    d,
                    e,
                    content: content
                )
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
        @ViewBuilder content: @escaping () -> some View
    ) {
        super.init(
            rootView: AnyView(
                ComposableView6(
                    a,
                    b,
                    c,
                    d,
                    e,
                    f,
                    content: content
                )
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
        @ViewBuilder content: @escaping () -> some View
    ) {
        super.init(
            rootView: AnyView(
                ComposableView7(
                    a,
                    b,
                    c,
                    d,
                    e,
                    f,
                    g,
                    content: content
                )
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
        @ViewBuilder content: @escaping () -> some View
    ) {
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
                    h,
                    content: content
                )
            )
        )
    }
    
    @MainActor
    public required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    // MARK: - Public
    
    // MARK: - Private
}
