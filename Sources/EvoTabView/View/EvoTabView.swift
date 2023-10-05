//
//  EvoTabView.swift
//  EvoTabView
//
//  Created by Rahul C K on 04/10/23.
//

import SwiftUI

public struct EvoTabView<Content:View>: View {
    
    @Binding var selection: EvoTabBarItem
    let content: Content
    @State private var tabs: [EvoTabBarItem] = []
    
    public init(selection: Binding<EvoTabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    public var body: some View {
        ZStack(alignment: .bottom) {
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            EvoTabContainerView(tabs: tabs, selection: $selection, localSelection: selection)
        }
        .onPreferenceChange(EvoTabBarItemsPreferenceKey.self, perform: { value in
            self.tabs = value
        })
    }
}
