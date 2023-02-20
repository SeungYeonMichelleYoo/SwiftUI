//
//  ContentView.swift
//  SwiftUI_WebView
//
//  Created by SeungYeon Yoo on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                NavigationLink(destination:
                                MyWebView(urlToLoad: "https://www.naver.com")
                    .edgesIgnoringSafeArea(.all)
                ) {
                    Text("네이버")
                        .font(.system(size:20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination:
                                MyWebView(urlToLoad: "https://www.daum.net")
                    .edgesIgnoringSafeArea(.all)
                ) {
                    Text("다음")
                        .font(.system(size:20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination:
                                MyWebView(urlToLoad: "https://www.google.com")
                    .edgesIgnoringSafeArea(.all)
                ) {
                    Text("구글")
                        .font(.system(size:20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
