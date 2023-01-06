//
//  Tamagochi.swift
//  FirstSwiftUIApp
//
//  Created by SeungYeon Yoo on 2023/01/04.
//

import SwiftUI

//Opaque Type (역제네릭)
//컴파일 시 실제 값에 반환을 해 줌
//프로퍼티 내부에서는 실제 타입이 어떤지 명확하게 알 수 있음.
//프로퍼티 외부에서는 어떤 타입인지 알 수 없음.
//Swift5.1 some, propertyWrapper

/*
1. 구조체
2. 연산프로퍼티 => 항상 body가 그려질 때 전부 다시 그리게 됨!
=> 다시 그려지는 패턴이 다름
 */

/*
동작 방식에 차이 (재사용 메커니즘이 동작하냐 아니냐의 차이)
V H Z Stack: 전체 데이터를 메모리에 담아두고 스크롤할 때 보여줄 뿐
LazyVStack LazyHStack: 화면에 렌더링될 때 데이터 메모리담고 그린다
 */

struct GrowButton: View {
    var text: String
    var icon: Image
    var action: (() -> Void)
    
    var body: some View {
        
        Button(action: action, label: {
            icon
            Text(text)
        })
        .padding()
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(20)
    }
}

struct ExampleText: View {
    var body: some View {
        Text("방실방실 다마고치 \(Int.random(in: 1...100))")
    }
}

struct Tamagochi: View {
    
    //값 변경 하고 싶을 때 앞에 @State 붙인다
    @State private var riceCount: Int = 0
    @State private var waterCount: Int = 0
    @State private var showModal = false
    @State private var isAnimating = false //처음엔 애니메이션 시작X, true 되면 시작. 시작점 조절 변수
    
    var characterName: some View {
        Text("방실방실 다마고치 \(Int.random(in: 1...100))")
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "star")
                .resizable() //무식하게 나머지 공간 다 채우겠다
                .frame(width: 200, height: 200) //그래도 좀 조정하자
                .background(.gray)
                .offset(x: isAnimating ? -100 : 100, y: isAnimating ? 0 : 100)
                .animation(.easeOut.speed(0.2).repeatCount(4).delay(2), value: isAnimating)
            ZStack {
                characterName
                    .padding(100)
                    .background(.red)
                characterName
                    .padding(50)
                    .background(.yellow)
            }
            characterName
            ExampleText()
            Text("Lv1. 밥알 \(riceCount)개 물방울 \(waterCount)개")
      
            GrowButton(text: "밥먹기", icon: Image(systemName: "star")) {
                riceCount += 1
            }
            GrowButton(text: "물먹기", icon: Image(systemName: "pencil")) {
                waterCount += 1
            }
            GrowButton(text: "통계보기", icon: Image(systemName: "pencil")) {
                showModal = true //여기까지 봤을 땐 화면 전환이 되는지 안되는지 알 수 없다
            }
            .sheet(isPresented: $showModal) {
                ExampleView()
            }
        }
        .onAppear(perform: {
            print("viewDidAppear")
            print("viewDidLoad에서 하고 싶은 일들을 여기 쓰면 이상해짐...")
            isAnimating = true
        })
        .onDisappear {
            print("viewDidDisappear")
        }
    }
}

struct Tamagochi_Previews: PreviewProvider {
    static var previews: some View {
        Tamagochi()
    }
}
