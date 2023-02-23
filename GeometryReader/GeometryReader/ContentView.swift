//
//  ContentView.swift
//  GeometryReader
//
//  Created by SeungYeon Yoo on 2023/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader{ geometry in
            HStack(spacing: 0){
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 3)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 3)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 3)
                    .foregroundColor(Color.white)
                    .background(Color.green)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 50)
//                    .foregroundColor(Color.white)
//                    .background(Color.purple)
            }
            .background(Color.yellow)
        }
        .background(Color.black)
    }
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
