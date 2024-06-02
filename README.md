# Compoes
Compose is a package that allows you to use `UIViewController` view as `SwiftUI` view.

<image src="https://user-images.githubusercontent.com/11141077/217019280-2863273b-3ec0-4f2c-a7d9-c8110389853f.gif" width=700 />

- [Compoes](#compoes)
- [Requirements](#requirements)
- [Installation](#installation)
    - [Swift Package Manager](#swift-package-manager)
- [Getting Started](#getting-started)
  - [Extras](#extras)
    - [Self reference](#self-reference)
    - [ComposableView(UIView) supports](#composableviewuiview-supports)
  - [Usecases](#usecases)
    - [Common `ViewModel`(`ObservableObject`) usecase](#common-viewmodelobservableobject-usecase)
    - [Separate child view usecase](#separate-child-view-usecase)
    - [Use exist view](#use-exist-view)
  - [Preview](#preview)
- [Contribution](#contribution)
- [License](#license)

# Requirements
- iOS 13.0+
- macOS 10.15+

# Installation
### Swift Package Manager
```swift
dependencies: [
    .package(url: "https://github.com/wlsdms0122/Compose.git", from: "1.0.0")
]
```

# Getting Started
You can inherit `ComposableController` to make view controller using `SwiftUI` view.

`CopmosableController` inherited `UIHostingController`.
```swift
import Compose

class MainViewController: ComposableController { ... }
```

To layout view of controller, You should be define initializer. The content body will call when `SwiftUI` needs to re-render thre view.
```swift
import Compose

class MainViewController: ComposableController {
    init() {
        super.init() {
            Text("Hello World")
        }
    }
}
```

You can use any `ObservableObject` to manage states of view. Typically use convention that define nested class that adopt `ObservableObject`. And pass it to super class's initializer after instantiate.

And in iOS 14.0 or macOS 11.0 or later, you can choose the type between `StateObject` and `ObservedObject` using `ComposableObject`'s method

> ⚠️ Not use `@State` or `@Binding` property wrapper in `ComposableController`. All states are managed by `@Published` of `ObservableObejct`.
```swift
public extension ComposableObject {
    @available(iOS 14.0, macOS 11.0, *)
    static func state<ObjectType: ObservableObject>(_ object: ObjectType) -> Self where Self == StateObject<ObjectType>
    static func observed<ObjectType: ObservableObject>(_ object: ObjectType) -> Self where Self == ObservedObject<ObjectType>
}
```

```swift
import Compose

class MainViewController: ComposableController {
    @ComposableObject
    final class Environment {
        var count: Int = 0
    }

    override init() {
        let env = Environment()

        super.init(.observed(env)) {
            Text("\(env.count)")
            Button("+1") {
                env.count += 1
            }
        }
    }
}
```

The `ComposableController` prepared a number of initializers for observable objects. (0-8)

If you pass the `ObservableObject` itself, it will behave as the `ObservedObject` in iOS 13 or macOS 10.15 and as the `StateObject` in iOS 14.0+ or macOS 11.0+ and later.
```swift
import Compose

class MainViewController: ComposableController {
    ...
    override init() {
        ...
        let env = Environment()
        // The `env` object behaves as either an `ObservedObject` or a `StateObject`, depending on its version.
        super.init(env)
        ...
    }
}
```

## Extras
### Self reference
To reference your own object (view controller), you can call the `run(_:)` method after the super initializer call.
```swift
import Compose

class MainViewController: ComposableController {
    override init() {
        super.init()
        run { [weak self] in
            Button("Present new controller") {
                self?.present(ViewController(), animated: true)
            }
        }
    }
}
```

### ComposableView(UIView) supports
If you want to convert a SwiftUI `View` to a `UIView`, use `ComposableView`. It's almost same with `ComposableController`.

```swift
import Compose

/// Define custom `UIView`.
class TitleLabel: ComposableView {
    init(frame: CGRect) {
        super.init(frame: frame) {
            Text("Hello World")
        }
    }
}

/// Instantiation with `View`
ComposableView(Text("Hello World"))
```

## Usecases
### Common `ViewModel`(`ObservableObject`) usecase
```swift
import Compose

class ListViewController: ComposableController {
    init(viewModel: ListViewModel) {
        super.init(viewModel)
        run {
            List(viewModel.items) {
                Text("\($0.title)")
            }
        }
    }
}
```

### Separate child view usecase
You can this style to layout complex view. (like `Compose` of `Android`)
```swift
import Compose

class ListViewController: ComposableController {
    init(viewModel: ListViewModel) {
        super.init(viewModel)
        run {
            Root(
                items: viewModel.items
            ) {
                viewModel.select($0)
            }
        }
    }
}

@ViewBuilder
private func Root(
  items: [Item],
  onItemTap: @escaping (Item) -> Void
) -> some View {
    List(items) {
        ListItem(
            item: $0,
            onItemTap: onItemTap
        )
    }
}

@ViewBuilder
private func ListItem(
    item: Item,
    onItemTap: @escaping (Item) -> Void
) -> some View {
    Text("\(item.title)")
        .onTapGesture {
            onItemTap(item)
        }
}
```

### Use exist view
```swift
import Compose

class ListViewController: ComposableController {
    init(viewModel: ListViewModel) {
        super.init(ListView(viewModel))
    }
}
```

## Preview
For preview, instantiate controller and call `rootView` in preview provider.

```swift
#if DEBUG
struct Main_Previews: PreviewProvider {
    static var previews: some View {
        MainViewController().rootView
    }
}
#endif
```

# Contribution
Any ideas, issues, opinions are welcome.

# License
Compose is available under the MIT license. See the LICENSE file for more info.
