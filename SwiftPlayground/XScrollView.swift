//
//  XScrollView.swift
//  SwiftPlayground
//
//  Created by 王蒙 on 16/11/2023.
//

import SwiftUI

struct XScrollView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(0..<100) {
                    Text("Row \($0)")
                }
            }
        }
        //.defaultScrollAnchor(.center) valid from 14+ version
    }
}

struct XScrollView_Previews: PreviewProvider {
    static var previews: some View {
        XScrollView()
    }
}
