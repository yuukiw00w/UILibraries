//
//  Created by Yuki Noseda on 2023/07/01.
//

import SwiftUI

enum UIListItem: String, Hashable, Identifiable, CaseIterable {
    case textField, colorPicker, openWindow

    var id: Self { self }
}

struct TextFieldView: View {
    @State private var text = ""

    var body: some View {
        VStack {
            TextField("text field title", text: $text)
        }.navigationTitle(text)
    }
}

struct ColorPickerView: View {
    @State private var color = Color.white

    var body: some View {
        VStack {
            ColorPicker(selection: $color, label: {
                Text("色の選択")
            })
        }.navigationTitle(color.description)
    }
}

struct OpenWindowButton: View {
    @Environment(\.openWindow)
    private var openWindow

    var body: some View {
        if UIApplication.shared.supportsMultipleScenes {
            Button("Open window") {
                openWindow(id: WindowGroupID.contents.id)
            }
        } else {
            Button("can not open window") {
                print("tapped")
            }
        }
    }
}

struct RootView: View {
    let features: [UIListItem] = UIListItem.allCases
    @State private var selection: UIListItem?

    var body: some View {
        NavigationSplitView {
            List(features, id: \.id, selection: $selection) { feature in
                NavigationLink(feature.rawValue, value: feature)
            }
        } detail: {
            switch selection {
            case .textField:
                TextFieldView()
            case .colorPicker:
                ColorPickerView()
            case .openWindow:
                OpenWindowButton()
            case nil:
                Text("select")
            }
        }
    }
}

#Preview("RootView") {
    RootView()
}
