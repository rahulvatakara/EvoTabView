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
    
    @State private var tabSelection: EvoTabBarItem = EvoTabBarItem.movies
    
    var body: some View {
        EvoTabView(selection: $tabSelection, backgroundGradient: [.black, Color(#colorLiteral(red: 0.262745098, green: 0.262745098, blue: 0.262745098, alpha: 1))],
                   onTapped: { tab in
            if tab == .add {
                // Plus button action
                print("+")
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

struct AppTabBarView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppTabBarView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
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
