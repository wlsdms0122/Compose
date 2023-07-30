# Compoes
Compose is a package that allows you to use `UIViewController` view as `SwiftUI` view.

<image src="https://user-images.githubusercontent.com/11141077/217019280-2863273b-3ec0-4f2c-a7d9-c8110389853f.gif" width=700 />

- [Compoes](#compoes)
- [Requirements](#requirements)
- [Installation](#installation)
    - [Swift Package Manager](#swift-package-manager)
- [Getting Started](#getting-started)
  - [Extras](#extras)
    - [Variable initializer](#variable-initializer)
    - [ComposableView supports](#composableview-supports)
  - [Usecases](#usecases)
    - [Common `ViewModel`(`ObservableObject`) usecase](#common-viewmodelobservableobject-usecase)
    - [Separate child view usecase](#separate-child-view-usecase)
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
    .package(url: "https://github.com/wlsdms0122/Compose.git", exact: "1.6.0")
]
```

# Getting Started
You can inherit `ComposableController` to make view controller using `SwiftUI` view.

`CopmosableController` inherited `UIHostingController`.

```swift
import Compose

class MainViewController: ComposableController {
    ...
}
```

To layout view of controller, You should be define initializer. And call `run(_:)` to write `SwiftUI` view after call super class's initializer.

The view passed through the `run(_:)` method is called when `SwiftUI` needs to re-render the view.

```swift
import Compose

class MainViewController: ComposableController {
    override init() {
        super.init()
        run {
            Text("Hello World")
        }
    }
}
```

You can use any `ObservableObject` to manage states of view. Typically use convention that define nested class that adopt `ObservableObject`. And pass it to super class's initializer after instantiate.

> ⚠️ Not use `@State` or `@Binding` property wrapper in `ComposableController`. All states are managed by `@Published` of `ObservableObejct`.

```swift
import Compose

class MainViewController: ComposableController {
    private final class Environment: ObservableObject {
        @Published
        var count: Int = 0
    }

    override init() {
        let env = Environment()

        super.init(env)        
        run {
            Text("\(env.count)")
            Button("+1") {
                env.count += 1
            }
        }
    }
}
```

The `ComposableController` prepared a number of initializers for objects. (0-8)

```swift
public init()
public init<A>(_ a: A) where A : ObservableObject
public init<A, B>(_ a: A, _ b: B) where A : ObservableObject, B : ObservableObject
public init<A, B, C>(_ a: A, _ b: B, _ c: C) where A : ObservableObject, B : ObservableObject, C : ObservableObject
public init<A, B, C, D>(_ a: A, _ b: B, _ c: C, _ d: D) where A : ObservableObject, B : ObservableObject, C : ObservableObject, D : ObservableObject
public init<A, B, C, D, E>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E) where A : ObservableObject, B : ObservableObject, C : ObservableObject, D : ObservableObject, E : ObservableObject
public init<A, B, C, D, E, F>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F) where A : ObservableObject, B : ObservableObject, C : ObservableObject, D : ObservableObject, E : ObservableObject, F : ObservableObject
public init<A, B, C, D, E, F, G>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G) where A : ObservableObject, B : ObservableObject, C : ObservableObject, D : ObservableObject, E : ObservableObject, F : ObservableObject, G : ObservableObject
public init<A, B, C, D, E, F, G, H>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H) where A : ObservableObject, B : ObservableObject, C : ObservableObject, D : ObservableObject, E : ObservableObject, F : ObservableObject, G : ObservableObject, H : ObservableObject
```

## Extras
### Variable initializer
You can layout view in super initializer call also.

```swift
import Compose

class MainViewController: ComposableController {
    override init() {
        super.init {
            Text("Hello World")
        }
    }
}
```

```swift
ComposableController(Text("Hello World"))
```

### ComposableView supports
If you want to convert a SwiftUI `View` to a `UIView`, use `ComposableView`. It's almost same with `ComposableController`.

```swift
import Compose

/// Define custom `UIView`.
class TitleLabel: ComposableView {
    init(frame: CGRect) {
        super.init(frame: frame)

        run {
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
