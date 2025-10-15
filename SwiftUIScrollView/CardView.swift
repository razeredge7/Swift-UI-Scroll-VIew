//
//  CardView.swift
//  SwiftUIScrollView
//
//  Created by Kevin on 10/10/25.
//

import SwiftUI

struct CardView: View {
    var image: String
    var category: String
    var heading: String
    var author: String
    
    var body: some View {
        //VStack to wrap text and image
        VStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack{
                //HStack to give spacer
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(heading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text("Written by \(author)".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                //leading spacer
                Spacer()
            }.minimumScaleFactor(0.5)
            .padding()
        }
        
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}

//#Preview {
//    CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a border with rounded corners", author: "Simon Ng")
//}
