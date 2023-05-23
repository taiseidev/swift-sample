//
//  ContentView.swift
//  SampleProject
//
//  Created by 大西　泰生 on 2023/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var randomNumber = 1
    @State private var timer: Timer?
    @State private var isRolling = false
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "die.face.\(randomNumber)")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width / 2)
                .padding()
            Spacer()
            Button {
                playDice()
            } label: {
                Text("サイコロをふる")
                    .padding()
                    .background(.orange)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }.disabled(isRolling)
            Spacer()
        }
    }
    
    private func playDice() {
        isRolling = true
        print("ボタンが押されたよ")
        // 0.1秒ごとにタイマーが発火
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            randomNumber = Int.random(in: 1...6)
        }
        // 0.5秒後にタイマーを止める
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            timer?.invalidate()
            timer = nil
            isRolling = false
        }
    }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
