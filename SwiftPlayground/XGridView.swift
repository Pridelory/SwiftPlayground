//
//  XGridView.swift
//  SwiftPlayground
//
//  Created by 王蒙 on 16/11/2023.
//

import SwiftUI

struct XGridView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct XGridViewTest: View {
    let rows = [
        // GridItem: A description of a row or a column in a lazy grid (LazyHGrid or LazyYGrid)
        GridItem(.fixed(30), spacing: 10),
        GridItem(.fixed(60), spacing: 10),
        GridItem(.fixed(90), spacing: 20),
        GridItem(.fixed(10), spacing: 50)
    ]

    var body: some View {
        ScrollView(.horizontal) {
            // The application of LazyHGrid which is a container view that arranges its child views in a grid that grows horizontally,
            // creating items if needed.
            LazyHGrid(rows: rows, spacing: 5) {
                ForEach(0...300, id: \.self) { _ in
                    Color.red.frame(width: 30)
                    Color.green.frame(width: 30)
                    Color.blue.frame(width: 30)
                    Color.yellow.frame(width: 30)
                }
            }
        }
    }
}

struct XGridView_Previews: PreviewProvider {
    static var previews: some View {
        XGridViewTest()
    }
}
