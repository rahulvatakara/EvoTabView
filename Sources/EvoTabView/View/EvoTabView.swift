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
    var backgroundGradient: [Color] = []
    var onTapped: ((_ tab: EvoTabBarItem) -> Void)?
    
    public init(selection: Binding<EvoTabBarItem>,
                backgroundGradient: [Color] = [.black, .black.opacity(0.8)], onTapped: ((EvoTabBarItem) -> Void)? = nil,
                @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.backgroundGradient = backgroundGradient
        self.onTapped = onTapped
        self.content = content()
    }
    
    public var body: some View {
        ZStack(alignment: .bottom) {
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            EvoTabContainerView(tabs: tabs,
                                selection: $selection,
                                localSelection: selection,
                                backgroundGradient: backgroundGradient,
                                onTapped: onTapped)
        }
        .onPreferenceChange(EvoTabBarItemsPreferenceKey.self, perform: { value in
            self.tabs = value
        })
    }
}
