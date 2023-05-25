//
//  SecondView.swift
//  SampleProject
//
//  Created by 大西　泰生 on 2023/05/24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Text("SecondView")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
