//
//  MyTabView.swift
//  SwiftUI_CardStackView
//
//  Created by SeungYeon Yoo on 2023/03/11.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView{
//            Text("1번")
//                .fontWeight(.black)
//                .font(.largeTitle)
            MyView(title: "1번", bgColor: Color.yellow)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
//            Text("2번")
//                .fontWeight(.black)
//                .font(.largeTitle)
            MyView(title: "2번", bgColor: Color.orange)
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(1)
//            Text("3번")
//                .fontWeight(.black)
//                .font(.largeTitle)
            MyView(title: "3번", bgColor: Color.blue)
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(2)
            
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
