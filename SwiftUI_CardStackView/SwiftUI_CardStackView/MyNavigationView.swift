//
//  MyNavigationView.swift
//  SwiftUI_CardStackView
//
//  Created by SeungYeon Yoo on 2023/02/22.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationBarTitle("안녕하세요!", displayMode: .inline)
                .navigationBarItems(leading: Button(action: {
                    print("호호")
                }){
                    Text("호호")
                }
                ,trailing: NavigationLink(destination:
                 Text("넘어온 화면")
                 ){
                    Image(systemName: "star.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                }
            )
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
