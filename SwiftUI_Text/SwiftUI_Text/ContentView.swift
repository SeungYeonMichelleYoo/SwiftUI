//
//  ContentView.swift
//  SwiftUI_Text
//
//  Created by SeungYeon Yoo on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
       let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    var today = Date()
    
    var trueOfFalse: Bool = false
    
    var number: Int = 123
    
    var body: some View {
        
        VStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, ")
                .tracking(2) //글자 사이의 간격
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .lineSpacing(10) //글자 위 아래 줄 사이의 간격
                .shadow(color: Color.red, radius: 1.5, x:10, y:10)
                .padding(.vertical, 20)
                .background(Color.yellow)
                .cornerRadius(10)
            
                .padding()
                .background(Color.green)
                .cornerRadius(20)
            
                .padding()
            
            Text("안녕하세요!!")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜입니다.: \(today, formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓: \(String(trueOfFalse))")
            
            Text("숫자입니다.: \(number)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
