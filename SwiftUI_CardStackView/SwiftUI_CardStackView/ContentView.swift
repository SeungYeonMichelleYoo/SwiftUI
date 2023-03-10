//
//  ContentView.swift
//  SwiftUI_CardStackView
//
//  Created by SeungYeon Yoo on 2023/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .bottomTrailing) {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack {
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        Spacer()
                        
                        NavigationLink(destination: MyProfile(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                    }.padding(20)
                    
                    Text("할 일 목록")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 20)
                    
                    ScrollView {
                        VStack {
                            MyProjectCard()
                            MyBasicCard()
                            MyCard(icon: "tray.fill", title: "정리하기", start: "10AM", end: "11AM", bgColor: .blue)
                            MyCard(icon: "cart.fill", title: "장보기", start: "12AM", end: "1PM", bgColor: .orange)
                            MyCard(icon: "gamecontroller.fill", title: "게임하기", start: "2PM", end: "3PM", bgColor: .gray)
                            MyCard(icon: "tv.fill", title: "영상 다시보기", start: "3PM", end: "4PM", bgColor: .pink)
                        }.padding()
                    }
                }
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(10)
                    .shadow(radius: 20)
            }//ZStack
            .navigationTitle("뒤로가기")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear {
                self.isNavigationBarHidden = true
            }
        }//NavigationView
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
