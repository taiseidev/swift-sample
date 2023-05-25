//
//  SecondView.swift
//  SampleProject
//
//  Created by 大西　泰生 on 2023/05/24.
//

import SwiftUI

struct SecondView: View {
    @Binding var isShowBView: Bool
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            Button {
                isShowBView = false
            } label: {
                Text("閉じる").font(.largeTitle).padding().background(.green).foregroundColor(.white).cornerRadius(10)
            }
        }
    }
}
