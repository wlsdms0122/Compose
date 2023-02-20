//
//  ComposableView.swift
//  
//
//  Created by JSilver on 2023/02/20.
//

import UIKit
import SwiftUI

open class ComposableView: UIView {
    // MARK: - Property
    private let controller: ComposableController
    public var rootView: AnyView { controller.rootView }
    
    // MARK: - Initializer
    public init(
        frame: CGRect = .zero,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(content)
        self.controller = controller
        
        super.init(frame: frame)
        
        addSubview(from: controller)
    }
    
    public init<
        A: ObservableObject
    >(
        frame: CGRect = .zero,
        _ a: A,
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
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
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
            b,
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
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
            b,
            c,
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
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
            b,
            c,
            d,
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
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
            b,
            c,
            d,
            e,
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
        @ViewBuilder _ content: @escaping () -> some View = { EmptyView() }
    ) {
        let controller = ComposableController(
            a,
            b,
            c,
            d,
            e,
            f,
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
        _ content: some View
    ) {
        self.init(
            frame: frame
        ) {
            content
        }
    }
    
    convenience init<
        A: ObservableObject
    >(
        frame: CGRect = .zero,
        _ a: A,
        _ content: some View
    ) {
        self.init(
            frame: frame,
            a
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
        _ content: some View
    ) {
        self.init(
            frame: frame,
            a,
            b
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
        _ content: some View
    ) {
        self.init(
            frame: frame,
            a,
            b,
            c
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
        _ content: some View
    ) {
        self.init(
            frame: frame,
            a,
            b,
            c,
            d
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
        _ content: some View
    ) {
        self.init(
            frame: frame,
            a,
            b,
            c,
            d,
            e
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
        _ content: some View
    ) {
        self.init(
            frame: frame,
            a,
            b,
            c,
            d,
            e,
            f
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
            g
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
            h
        ) {
            content
        }
    }
    
    public func run(_ content: some View) {
        run { content }
    }
}
