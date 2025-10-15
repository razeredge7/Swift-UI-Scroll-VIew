//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by Kevin on 29/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("MONDAY, AUG 20")
                .foregroundColor(.secondary)
                .font(.title3)
            Text("Your Reading")
                .fontWeight(.black)
            
                
            ScrollView(.horizontal, showsIndicators: false){// or vertical no need to define
                HStack {
                    Group{
                        CardView(image: "swiftui-button",
                                 category: "SwiftUI",
                                 heading: "Drawing a border with Rounded Corners",
                                 author: "Simon Ng")
                        
                        CardView(image: "macos-programming",
                                 category: "macOS", heading: "Building a Simple Editing App",
                                 author: "Gabriel Theodoropoulos")
                        
                        CardView(image: "flutter-app",
                                 category: "Flutter",
                                 heading: "Building a complex layout with Flutter",
                                 author: "Lawrence Tan")
                        
                        CardView(image: "natural-language-api",
                                 category: "iOS",
                                 heading: "What's new in Natural Language API",
                                 author: "Sai Kambampati")
                        
                    }
                    .frame(width:300)
                }
//                .padding()
                Spacer()
            }
        }
        .font(.largeTitle)
        .padding(20)
//        Spacer()
    }
}

#Preview {
    ContentView()
}
