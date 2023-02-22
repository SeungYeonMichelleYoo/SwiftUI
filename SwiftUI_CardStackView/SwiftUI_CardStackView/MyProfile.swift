//
//  MyProfile.swift
//  SwiftUI_CardStackView
//
//  Created by SeungYeon Yoo on 2023/02/22.
//

import SwiftUI

struct MyProfile: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        
        ScrollView {
            VStack {
                Image("1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 10, x:0, y:10)
                    .overlay(
                        Circle()
                            .strokeBorder(Color.blue, lineWidth: 5)
                    )
                Spacer().frame(height: 50)
                Text("Teacher Profile")
                    .fontWeight(.bold)
                Spacer().frame(height: 20)
                Text("Provides TOEFL/TEPS lectures")
                Spacer().frame(height: 20)
                HStack {
                    Button(action: {
                        print("구독 clicked")
                        
                    }) {
                        Text("구독")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 80)
                            .background(Color.green)
                            .cornerRadius(20)
                    }
                    
                    Button(action: {
                        print("좋아요 clicked")
                        
                    }) {
                        Text("좋아요")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 80)
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                }//HStack
                
            }//VStack
        }//ScrollView
        .navigationBarTitle("내 프로필")
        .navigationBarItems(trailing: NavigationLink(destination: Text("설정 화면입니다.").font(.largeTitle).fontWeight(.bold)) {
            Image(systemName: "gear")
                .font(.largeTitle)
                .foregroundColor(.black)
        }
        )
        .onAppear {
            self.isNavigationBarHidden = false
        }
        
    }
}

struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
