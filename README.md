# EvoTabView
EvoTabView stands out as a versatile and customizable Tab View library crafted specifically for SwiftUI. With its design mirroring the native TabView, integrating it into your SwiftUI projects becomes a breeze.

It's widely acknowledged that native components offer a seamless experience in iOS applications. They not only enhance performance but also ensure a consistent look and feel that users are familiar with. However, there are situations when native components might not suffice or offer the flexibility required by certain design specifications. This is where EvoTabView steps in, providing the adaptability you need without compromising on the native feel.

The aim is to offer a balanced blend of customization and native experience. By choosing EvoTabView, you get the best of both worlds: the familiarity of native components and the flexibility of custom solutions.

Dive into this guide to integrate and harness the capabilities of EvoTabView for your SwiftUI projects.

DEMO: Visual Representation

To provide a clearer understanding of how EvoTabView looks and functions, here are visual demonstrations:

Images:
EvoTabView Image Demo
![EvoTabView Image Demo](https://github.com/rahulvatakara/EvoTabView/blob/main/demo/evotab_image_1.png)
![EvoTabView Image Demo](https://github.com/rahulvatakara/EvoTabView/blob/main/demo/evotab_image_2.png)
![EvoTabView Image Demo](https://github.com/rahulvatakara/EvoTabView/blob/main/demo/evotab_image_3.png)


Replace the link above with the actual path to your image file if you're hosting the image elsewhere.

Videos:
EvoTabView Video Demo
![EvoTabView Video Demo](https://github.com/rahulvatakara/EvoTabView/blob/main/demo/evotab_video.mp4)


Click the thumbnail above to view the video demonstration. Replace the thumbnail and video link with the actual paths if they are hosted elsewhere.
## Example:
Here's an example of how to use EvoTabView:

```swift
import SwiftUI
import EvoTabView

struct ContentView: View {
    @State private var tabSelection: EvoTabBarItem = .books

    var body: some View {
        EvoTabView(selection: $tabSelection, backgroundGradient: [.black, .black.opacity(0.6)],
                   onTapped: { tab in
            if tab == .add {
                print("Add button action")
            }
        }) {
            ItemListView(title: "Books", Items: books)
                .tabBarItem(tab: .books, selection: $tabSelection)

            ItemListView(title: "Cities", Items: cities)
                .tabBarItem(tab: .cities, selection: $tabSelection)

            EmptyView()
                .tabBarItem(tab: .add, selection: $tabSelection)

            ItemListView(title: "Sports", Items: sports)
                .tabBarItem(tab: .sports, selection: $tabSelection)

            ItemListView(title: "Movies", Items: movies)
                .tabBarItem(tab: .movies, selection: $tabSelection)
        }
    }
}
```

You can define your custom tab items using an extension for EvoTabBarItem:

```swift
extension EvoTabBarItem {
    static var books: EvoTabBarItem {
        EvoTabBarItem(imageName: "book")
    }
    static var add: EvoTabBarItem {
        EvoTabBarItem(imageName: "plus",
                      actionButtonColor: .blue,
                      isAction: true)
    }
    static var movies: EvoTabBarItem {
        EvoTabBarItem(imageName: "film")
    }
    static var sports: EvoTabBarItem {
        EvoTabBarItem(imageName: "figure.run.square.stack.fill")
    }
    static var cities: EvoTabBarItem {
        EvoTabBarItem(imageName: "location.circle")
    }
}
```

## Contributions

Contributions to this repository are welcome! If you have an interesting SwiftUI UI reference sample to share or would like to enhance an existing sample, feel free to submit a pull request. Please refer to the contribution guidelines for more details.

## License

This project is licensed under the [MIT License](https://chat.openai.com/LICENSE). You are free to use, modify, and distribute the code within this repository, subject to the terms and conditions of the license.

## Acknowledgements

We would like to express our gratitude to the SwiftUI community for their valuable contributions, bug reports, and feedback. Your support has been instrumental in making this repository a reliable resource for developers working with SwiftUI.

Happy coding!
