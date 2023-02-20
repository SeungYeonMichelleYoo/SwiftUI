//
//  RepresentableView.swift
//  FirstSwiftUIApp
//
//  Created by SeungYeon Yoo on 2023/01/06.
//

import SwiftUI

//SampleSwiftViewController -> 구조체로 바꾸는데 (감싸주는 느낌) => 결과: SwiftUI에서 쓸 수 있게.
struct SampleSwiftViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return SampleSwiftViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

struct RepresentableView: View {
    var body: some View {
        SampleSwiftViewControllerRepresentable()
            .ignoresSafeArea()
    }
}

struct RepresentableView_Previews: PreviewProvider {
    static var previews: some View {
        RepresentableView()
    }
}
