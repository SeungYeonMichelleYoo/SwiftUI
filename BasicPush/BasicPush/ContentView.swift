//
//  ContentView.swift
//  BasicPush
//
//  Created by SeungYeon Yoo on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    
    //@State: 값의 변화를 감지 -> 뷰에 적용할 수 있게 해줌
    @State private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 30 : 10)
                .background(isActivated ? Color.yellow : Color.green)
                //탭 제스쳐 추가
                .onTapGesture {
                    print("HStack 클릭됨")
                    
                    //애니메이션과 함께
                    withAnimation {
                        //toggle() true 이면 false로, false이면 true
                        self.isActivated.toggle()
                    }
                }
                
                //네비게이션 버튼(링크)
                NavigationLink(destination: MyTextView(isActivated: $isActivated)) {
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }.padding(.top, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
