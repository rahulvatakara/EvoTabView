//
//  ItemView.swift
//  EvoTabViewSample
//
//  Created by Rahul C K on 07/10/23.
//
import SwiftUI

struct ItemView: View {
    let item: Item
    
    // Updated Colors for dark mode using Swift color literals wrapped in `Color` initializer
     let titleColor: Color = Color(#colorLiteral(red: 1.0, green: 0.6863, blue: 0.0078, alpha: 1.0)) // #FFAF02
     let subTitleColor: Color = Color(#colorLiteral(red: 0.3333, green: 0.7843, blue: 0.7843, alpha: 1.0))  // Soft Teal
     let descriptionColor: Color = Color(#colorLiteral(red: 0.8706, green: 0.8706, blue: 0.8706, alpha: 1.0)) // Lighter Gray


    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(item.title)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(titleColor)

            Text(item.subTitle)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(subTitleColor)

            Text(item.description)
                .font(.body).fontWeight(.light)
                .foregroundColor(descriptionColor)
        }
        .padding()
    }
}


#Preview {
    ItemView(item: books[0])
}
