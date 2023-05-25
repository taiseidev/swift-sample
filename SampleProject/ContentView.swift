//
//  ContentView.swift
//  SampleProject
//
//  Created by 大西　泰生 on 2023/05/22.
//

import SwiftUI

struct ContentView: View {
    @State var isShowSecondView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    SecondView()
                } label: {
                    Text("SecondViewへナビ遷移")
                }
                Button("SecondViewへモーダル遷移") {
                    isShowSecondView = true
                }.sheet(isPresented: $isShowSecondView) {
                    SecondView()
                        .presentationDetents([.medium])
                }
            }.navigationTitle("画面1")
        }

        
    }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
