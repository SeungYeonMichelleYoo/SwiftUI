//
//  ListView.swift
//  FirstSwiftUIApp
//
//  Created by SeungYeon Yoo on 2022/12/19.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Text("1위")
            HStack {
                Text("2위")
                Text("2위")
            }
            Text("3위")
            Text("4위")
            Text("5위")
                .foregroundColor(.yellow)
                .background(.black)
            Text("6위")
                .font(.caption) //뷰 설정 우선
            ForEach(0..<50) {
                Text("리스트셀\($0)")
                    .font(.headline)
                    .fontWeight(.light)
            }
        }
        .listStyle(.plain)
        .font(.largeTitle)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
