//
//  ContentView.swift
//  SampleProject
//
//  Created by 大西　泰生 on 2023/05/22.
//

import SwiftUI

struct ContentView: View {
    @State var isShowDialog = false
    
    var body: some View {
        VStack {
            Button {
                // ここに処理を追記する
                isShowDialog = true
            } label: {
                Text("ダイアログを表示")
            }.confirmationDialog("タイトル", isPresented: $isShowDialog) {
                // ボタンを配置する
                Button("選択肢1") {}
                Button("選択肢2") {}
            } message: {
                Text("メッセージを表示しています。")
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
