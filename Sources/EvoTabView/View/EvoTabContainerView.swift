//
//  EvoTabContainerView.swift
//  EvoTabView
//
//  Created by Rahul C K on 04/10/23.
//

import SwiftUI

struct EvoTabContainerView: View {
    
    let tabs: [EvoTabBarItem]
    @Binding var selection: EvoTabBarItem
    @Namespace private var namespace
    @State var localSelection: EvoTabBarItem
    var backgroundGradient: [Color] = []
    var onTapped: ((_ tab: EvoTabBarItem) -> Void)?


    
    var body: some View {
        tabBarView
            .onChange(of: selection, perform: { value in
                withAnimation(.easeInOut) {
                    localSelection = value
                }
            })
    }
}

extension EvoTabContainerView {
    
    private func tabView(tab: EvoTabBarItem) -> some View {
        VStack {
            if tab.isAction {
                Image(systemName: tab.imageName)
                    .font(.title3).foregroundColor(tab.color)
                    .padding(15)
                    .background(tab.actionButtonColor.clipShape(Circle()))
            } else {
                Image(systemName: tab.imageName)
                    .font(.title2)
            }
            if !tab.title.isEmpty {
                Text(tab.title)
                    .font(.system(size: 10, weight: .semibold, design: .rounded)).padding(.top, 3)
            }
        }
        .foregroundColor(localSelection == tab ? tab.color : Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(
            ZStack {
                if localSelection == tab, tab.isAction == false {
                    Circle()
                        .fill(tab.color).frame(width: 6)
                        .matchedGeometryEffect(id: "selection_dot", in: namespace)
                        .offset(y:30)
                }
            }
        )
    }
    
    private var tabBarView: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                Button {
                    switchToTabIfNeeded(tab: tab)
                } label: {
                    tabView(tab: tab)
                }
            }
        }
        .padding(6)
        .background(LinearGradient(gradient:
                                    Gradient(colors: backgroundGradient), startPoint: .top, endPoint: .bottom)
            .cornerRadius(20, corners: [.topLeft, .topRight]).ignoresSafeArea())
        .shadow(color: Color.white.opacity(0.3), radius: 2, x: 1, y: 2)
    }
    
    private func switchToTabIfNeeded(tab: EvoTabBarItem) {
        if !tab.isAction {
            selection = tab
        }
        onTapped?(tab)
    }
}
