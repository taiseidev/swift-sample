//
//  ContentView.swift
//  SampleProject
//
//  Created by 大西　泰生 on 2023/05/22.
//

import SwiftUI

struct ContentView: View {
    @State var isShowModal = false
    
    var body: some View {
        VStack {
            Button {
                isShowModal = true
            } label: {
                Text("モーダル表示")
            }.sheet(isPresented: $isShowModal) {
                SecondView(isShowBView: $isShowModal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
