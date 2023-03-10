//
//  MyWebView.swift
//  SwiftUI_WebView
//
//  Created by SeungYeon Yoo on 2023/02/20.
//
import SwiftUI
import WebKit

//UIKit의 UIView를 사용할 수 있도록 한다.
//UIViewControllerRepresentable

struct MyWebView: UIViewRepresentable {
      
    var urlToLoad: String
    
    //UIView 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        //웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        //웹뷰를 로드한다.
        webview.load(URLRequest(url: url))
 
        return webview
    }
    
    //업데이트 UI View
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
