import SwiftUI

struct MenuView: View {
    @AppStorage("menuName") var menuName = ""
    @AppStorage("memo") var memo = ""
    
    var body: some View {
        VStack {
            TextField("メニュー名", text: $menuName)
            TextEditor(text: $memo).border(.gray)
        }.padding()
    }
}
