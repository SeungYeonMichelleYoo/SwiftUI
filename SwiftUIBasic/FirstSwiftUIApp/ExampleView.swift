//
//  ExampleView.swift
//  FirstSwiftUIApp
//
//  Created by SeungYeon Yoo on 2022/12/19.
//

import SwiftUI

struct ExampleView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .foregroundColor(.red)
                .fontWeight(.heavy)
            Text("안녕하세요 hellowworld")
                .font(.caption)
                .italic()
            Spacer()
            Circle()
                .fill(.yellow)
            Ellipse()
                .fill(.green)
            Image(systemName: "star.fill")
                .imageScale(.large)
                .foregroundColor(.red)
            Rectangle()
                .fill(.blue)
            Text("이게 가능하다고??\n두번째줄\n세번째줄")
                .underline()
                .strikethrough()
                .lineLimit(2)
                .kerning(10)
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
            .previewDevice("iPhone 11")
    }
}
