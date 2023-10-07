//
//  AppTabBarView.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Nick Sarno on 9/6/21.
//

import SwiftUI

// Generics
// ViewBuilder
// PreferenceKey
// MatchedGeometryEffect
import EvoTabView

struct AppTabBarView: View {
    
    @State private var tabSelection: EvoTabBarItem = EvoTabBarItem.messages
    
    var body: some View {
        EvoTabView(selection: $tabSelection, backgroundGradient: [.black, Color(#colorLiteral(red: 0.262745098, green: 0.262745098, blue: 0.262745098, alpha: 1))],
                   onTapped: { tab in
            if tab == .add {
                // Plus button action
                print("+")
            }
        }) {
            TestTabView(text: "1")
                    .tabBarItem(tab: .home, selection: $tabSelection)
            
            TestTabView(text: "2")
                    .tabBarItem(tab: .messages, selection: $tabSelection)

            TestTabView(text: "3")
                .tabBarItem(tab: .add, selection: $tabSelection)
            
            TestTabView(text: "4")
                .tabBarItem(tab: .favorites, selection: $tabSelection)
            
            TestTabView(text: "4")
                .tabBarItem(tab: .profile, selection: $tabSelection)
        }
    }
}

struct AppTabBarView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppTabBarView()
    }
}

struct TestTabView: View {
    
    let text: String
    @State private var textFieldText: String = ""
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        VStack {
            Text(text)
                .onAppear {
            }
            TextField("Type something...", text: $textFieldText)
                .disableAutocorrection(true)
            
        }.background(Color.blue)
    }
}
