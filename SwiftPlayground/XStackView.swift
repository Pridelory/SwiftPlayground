//
//  XStackView.swift
//  SwiftPlayground
//
//  Created by 王蒙 on 16/11/2023.
//

import SwiftUI

struct XStackView: View {
    var body: some View {
        Text("Column")
    }
}

struct LazyHStackTest: View {
    var body: some View {
        ScrollView(.horizontal) {
            // LazyHStack renders the views when the app needs to display them on screen
            LazyHStack(alignment: .top, spacing: 10) {
                ForEach(1...100, id: \.self) {
                    Text("Column \($0)")
                }
            }
        }
    }
}

struct HStackViewTest: View {
    // HStack renders the views all at once.
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            ForEach(1...10, id: \.self) {
                Text("Item \($0)")
            }
        }
    }
}

struct XStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStackTest()
    }
}
