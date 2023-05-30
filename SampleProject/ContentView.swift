import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    @State var isShowInputView = false
    
    var body: some View {
        VStack {
            Text("あなたの名前は？：\(inputText)")
                .padding()
            Button("名前を入力する") {
                isShowInputView = true
            }.sheet(isPresented: $isShowInputView) {
                InputView(inputText: $inputText)
            }
        }
    }
}

struct InputView: View {
    @Binding var inputText: String
    
    var body: some View {
        TextField("", text: $inputText)
            .background(.gray)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
