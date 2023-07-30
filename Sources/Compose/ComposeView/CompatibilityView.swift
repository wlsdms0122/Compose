//
//  CompatibilityView.swift
//  
//
//  Created by JSilver on 2023/07/30.
//

import SwiftUI

func CompatibilityView<
    Content: View
>(
    _ refresher: Refresher,
    @ViewBuilder content: @escaping () -> Content
) -> any View {
    if #available(iOS 14.0, macOS 11.0, *) {
        return ComposeView(
            refresher,
            content: content
        )
    } else {
        return _ComposeView(
            refresher,
            content: content
        )
    }
}

func CompatibilityView1<
    A: ObservableObject,
    Content: View
>(
    _ refresher: Refresher,
    _ a: A,
    @ViewBuilder content: @escaping () -> Content
) -> any View {
    if #available(iOS 14.0, macOS 11.0, *) {
        return ComposeView1(
            refresher,
            a,
            content: content
        )
    } else {
        return _ComposeView1(
            refresher,
            a,
            content: content
        )
    }
}

func CompatibilityView2<
    A: ObservableObject,
    B: ObservableObject,
    Content: View
>(
    _ refresher: Refresher,
    _ a: A,
    _ b: B,
    @ViewBuilder content: @escaping () -> Content
) -> any View {
    if #available(iOS 14.0, macOS 11.0, *) {
        return ComposeView2(
            refresher,
            a,
            b,
            content: content
        )
    } else {
        return _ComposeView2(
            refresher,
            a,
            b,
            content: content
        )
    }
}

func CompatibilityView3<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    Content: View
>(
    _ refresher: Refresher,
    _ a: A,
    _ b: B,
    _ c: C,
    @ViewBuilder content: @escaping () -> Content
) -> any View {
    if #available(iOS 14.0, macOS 11.0, *) {
        return ComposeView3(
            refresher,
            a,
            b,
            c,
            content: content
        )
    } else {
        return _ComposeView3(
            refresher,
            a,
            b,
            c,
            content: content
        )
    }
}

func CompatibilityView4<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    D: ObservableObject,
    Content: View
>(
    _ refresher: Refresher,
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D,
    @ViewBuilder content: @escaping () -> Content
) -> any View {
    if #available(iOS 14.0, macOS 11.0, *) {
        return ComposeView4(
            refresher,
            a,
            b,
            c,
            d,
            content: content
        )
    } else {
        return _ComposeView4(
            refresher,
            a,
            b,
            c,
            d,
            content: content
        )
    }
}

func CompatibilityView5<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    D: ObservableObject,
    E: ObservableObject,
    Content: View
>(
    _ refresher: Refresher,
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D,
    _ e: E,
    @ViewBuilder content: @escaping () -> Content
) -> any View {
    if #available(iOS 14.0, macOS 11.0, *) {
        return ComposeView5(
            refresher,
            a,
            b,
            c,
            d,
            e,
            content: content
        )
    } else {
        return _ComposeView5(
            refresher,
            a,
            b,
            c,
            d,
            e,
            content: content
        )
    }
}

func CompatibilityView6<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    D: ObservableObject,
    E: ObservableObject,
    F: ObservableObject,
    Content: View
>(
    _ refresher: Refresher,
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D,
    _ e: E,
    _ f: F,
    @ViewBuilder content: @escaping () -> Content
) -> any View {
    if #available(iOS 14.0, macOS 11.0, *) {
        return ComposeView6(
            refresher,
            a,
            b,
            c,
            d,
            e,
            f,
            content: content
        )
    } else {
        return _ComposeView6(
            refresher,
            a,
            b,
            c,
            d,
            e,
            f,
            content: content
        )
    }
}

func CompatibilityView7<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    D: ObservableObject,
    E: ObservableObject,
    F: ObservableObject,
    G: ObservableObject,
    Content: View
>(
    _ refresher: Refresher,
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D,
    _ e: E,
    _ f: F,
    _ g: G,
    @ViewBuilder content: @escaping () -> Content
) -> any View {
    if #available(iOS 14.0, macOS 11.0, *) {
        return ComposeView7(
            refresher,
            a,
            b,
            c,
            d,
            e,
            f,
            g,
            content: content
        )
    } else {
        return _ComposeView7(
            refresher,
            a,
            b,
            c,
            d,
            e,
            f,
            g,
            content: content
        )
    }
}

func CompatibilityView8<
    A: ObservableObject,
    B: ObservableObject,
    C: ObservableObject,
    D: ObservableObject,
    E: ObservableObject,
    F: ObservableObject,
    G: ObservableObject,
    H: ObservableObject,
    Content: View
>(
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
) -> any View {
    if #available(iOS 14.0, macOS 11.0, *) {
        return ComposeView8(
            refresher,
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
    } else {
        return _ComposeView8(
            refresher,
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
    }
}
