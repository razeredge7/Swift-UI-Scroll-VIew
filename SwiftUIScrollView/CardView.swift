//
//  CardView.swift
//  SwiftUIScrollView
//
//  Created by Kevin on 29/07/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Image("swiftui-button")
            .resizable()
            .aspectRatio(contentMode: .fit)

        VStack(alignment: .leading) {
            Text("SwiftUI")
                .font(.largeTitle)
        }
    }
}

#Preview {
    CardView()
}
