import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print("ボタンが押されたよ")
            } label: {
                Text("ボタン1")
                    .modifier(ButtonModfier(backgroundColor: .red))
                
            }
            .padding()
            Button {
                print("ボタンが押されたよ")
            } label: {
                Text("ボタン2")
                    .modifier(ButtonModfier(backgroundColor: .blue))
            }
            .padding()
        }
    }
}

struct ButtonModfier: ViewModifier {
    let backgroundColor: Color
    func body(content: Content) -> some View {
        content.padding()
            .frame(width: 300, height: 60)
            .background(backgroundColor)
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
