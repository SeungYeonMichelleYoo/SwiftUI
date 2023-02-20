//
//  MyVStackView.swift
//  BasicPush
//
//  Created by SeungYeon Yoo on 2023/02/20.
//

import SwiftUI

struct MyVStackView: View {
    
    //데이터를 연동시킨다
    @Binding var isActivated: Bool
    
    //생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("안녕")
                .font(.system(size:20))
            Text("안녕")
                .font(.system(size:20))
        }
        .padding()
        .background(self.isActivated ? Color.gray : Color.pink)
        .padding(self.isActivated ? 10 : 0)
    }
}
