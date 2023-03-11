//
//  MyView.swift
//  SwiftUI_CardStackView
//
//  Created by SeungYeon Yoo on 2023/03/11.
//

import SwiftUI

struct MyView: View {
    
    var title: String
    
    var bgColor: Color
    
    var body: some View {
        ZStack{
            
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "마이뷰", bgColor: Color.orange)
    }
}
