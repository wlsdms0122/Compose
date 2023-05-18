//
//  ComposableView.swift
//  
//
//  Created by JSilver on 2023/02/20.
//

import SwiftUI
#if os(iOS)
import UIKit

open class ComposableView: UIView {
    // MARK: - Property
    public let controller: ComposableController
    
    public var rootView: AnyView { controller.rootView }
    public var content: UIView { controller.view }
    
    // MARK: - Initializer
    public init(
        frame: CGRect = .zero,
        disableSafeArea: Bool = false,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            disableSafeArea: disableSafeArea,
            content
        )
        self.controller = controller
        
        super.init(frame: frame)
        
        addSubview(from: controller)
    }
    
    public init<
        A: ObservableObject
    >(
        frame: CGRect = .zero,
        _ a: A,
        disableSafeArea: Bool = false,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
            disableSafeArea: disableSafeArea,
            content
        )
        self.controller = controller
        
        super.init(frame: frame)
        
        addSubview(from: controller)
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject
    >(
        frame: CGRect = .zero,
        _ a: A,
        _ b: B,
        disableSafeArea: Bool = false,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
            b,
            disableSafeArea: disableSafeArea,
            content
        )
        self.controller = controller
        
        super.init(frame: frame)
        
        addSubview(from: controller)
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject
    >(
        frame: CGRect = .zero,
        _ a: A,
        _ b: B,
        _ c: C,
        disableSafeArea: Bool = false,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
            b,
            c,
            disableSafeArea: disableSafeArea,
            content
        )
        self.controller = controller
        
        super.init(frame: frame)
        
        addSubview(from: controller)
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject,
        D: ObservableObject
    >(
        frame: CGRect = .zero,
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        disableSafeArea: Bool = false,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
            b,
            c,
            d,
            disableSafeArea: disableSafeArea,
            content
        )
        self.controller = controller
        
        super.init(frame: frame)
        
        addSubview(from: controller)
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject,
        D: ObservableObject,
        E: ObservableObject
    >(
        frame: CGRect = .zero,
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        disableSafeArea: Bool = false,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
            b,
            c,
            d,
            e,
            disableSafeArea: disableSafeArea,
            content
        )
        self.controller = controller
        
        super.init(frame: frame)
        
        addSubview(from: controller)
    }
    
    public init<
        A: ObservableObject,
        B: ObservableObject,
        C: ObservableObject,
        D: ObservableObject,
        E: ObservableObject,
        F: ObservableObject
    >(
        frame: CGRect = .zero,
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F,
        disableSafeArea: Bool = false,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
            b,
            c,
            d,
            e,
            f,
            disableSafeArea: disableSafeArea,
            content
        )
        self.controller = controller
        
        super.init(frame: frame)
        
        addSubview(from: controller)
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
        frame: CGRect = .zero,
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
        let controller = ComposableController(
            a,
            b,
            c,
            d,
            e,
            f,
            g,
            disableSafeArea: disableSafeArea,
            content
        )
        self.controller = controller
        
        super.init(frame: frame)
        
        addSubview(from: controller)
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
        frame: CGRect = .zero,
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
        let controller = ComposableController(
            a,
            b,
            c,
            d,
            e,
            f,
            g,
            h,
            disableSafeArea: disableSafeArea,
            content
        )
        self.controller = controller
        
        super.init(frame: frame)
        
        addSubview(from: controller)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public
    public func run(@ViewBuilder _ content: @escaping () -> some View) {
        controller.run(content)
    }
    
    // MARK: - Private
    private func addSubview(from controller: UIViewController) {
        guard let view = controller.view else { return }
        
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor),
            view.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
    }
}

public extension ComposableView {
    convenience init(
        frame: CGRect = .zero,
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            frame: frame,
            disableSafeArea: disableSafeArea
        ) {
            content
        }
    }
    
    convenience init<
        A: ObservableObject
    >(
        frame: CGRect = .zero,
        _ a: A,
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            frame: frame,
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
        frame: CGRect = .zero,
        _ a: A,
        _ b: B,
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            frame: frame,
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
        frame: CGRect = .zero,
        _ a: A,
        _ b: B,
        _ c: C,
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            frame: frame,
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
        frame: CGRect = .zero,
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            frame: frame,
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
        frame: CGRect = .zero,
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        disableSafeArea: Bool = false,
        _ content: some View
    ) {
        self.init(
            frame: frame,
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
        frame: CGRect = .zero,
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
            frame: frame,
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
        frame: CGRect = .zero,
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
            frame: frame,
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
        frame: CGRect = .zero,
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
            frame: frame,
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
