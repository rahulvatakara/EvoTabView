//
//  ItemListView.swift
//  EvoTabViewSample
//
//  Created by Rahul C K on 07/10/23.
//

import SwiftUI

struct ItemListView: View {
    let title: String
    let Items: [Item]
    var body: some View {
        NavigationView {
            List {
                ForEach(Items, id: \.title) { item in
                    ItemView(item: item)
                }
            }.navigationBarTitle(title, displayMode: .large)
        }
    }
}


#Preview {
    ItemListView(title: "Books", Items: books).preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

struct Item {
    let title: String
    let subTitle: String
    let description: String
}
