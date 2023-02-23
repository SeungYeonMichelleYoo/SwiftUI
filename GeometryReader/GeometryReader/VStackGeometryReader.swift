//
//  VStackGeometryReader.swift
//  GeometryReader
//
//  Created by SeungYeon Yoo on 2023/02/23.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct VStackGeometryReader: View {
    
    @State var index: Index = .one
    
    //Geometry proxy를 매개변수로 가지고 CGPoint를 반환하는 클로저
    let centerPosition: (GeometryProxy) -> CGPoint = { proxy in
        return CGPoint(x: proxy.frame(in: .local).midX,
                       y: proxy.frame(in: .local).midY)
    }
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                
                Button(action: {
                    //button 클릭 되었을 때 로직
                    print("1번이 클릭되었다.")
                    withAnimation{
                        self.index = .one
                    }
                }){
                    //버튼 생김새
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                }
                
                Button(action: {
                    //button 클릭 되었을 때 로직
                    print("2번이 클릭되었다.")
                    withAnimation{
                        self.index = .two
                    }
                }){
                    //버튼 생김새
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                }
                
                Button(action: {
                    //button 클릭 되었을 때 로직
                    print("3번이 클릭되었다.")
                    withAnimation{
                        self.index = .three
                    }
                }){
                    //버튼 생김새
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                }
            }//Vstack
            .position(centerPosition(proxy))
        }//geometryreader
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

struct VStackGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        VStackGeometryReader()
    }
}
