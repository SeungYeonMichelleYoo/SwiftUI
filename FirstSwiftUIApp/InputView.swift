//
//  InputView.swift
//  FirstSwiftUIApp
//
//  Created by SeungYeon Yoo on 2023/01/05.
//

import SwiftUI
/*
 Storyboard(UIKit) + SwiftUI > UIHostingController
 SwiftUI + Storyboard(UIKit) > UIViewRepresentable / UIViewControllerRepresentable
 */

struct UserTextView: View {
    
    @Binding var text: String
    
    var body: some View {
        Text(text)
    }
}

struct ChatTextView: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> UITextView {
        let textview = UITextView()
        textview.backgroundColor = .lightGray
        return textview
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.text = text
    }
}


struct InputView: View {
    @State private var nickname = ""
    var body: some View {
        VStack {
            TextField("닉네임을 입력해주세요", text: $nickname, axis: .vertical)
                .padding()
                .lineLimit(4)
                .textFieldStyle(RoundedBorderTextFieldStyle())
//            UserTextView(text: $nickname)
            ChatTextView(text: $nickname)
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
