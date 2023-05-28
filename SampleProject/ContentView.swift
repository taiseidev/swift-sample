//
//  ContentView.swift
//  SampleProject
//
//  Created by 大西　泰生 on 2023/05/22.
//

import SwiftUI

struct TaskData: Identifiable {
    var title: String
    var completed: Bool
    var id = UUID()
}

struct ContentView: View {
    @State var taskData = [
        TaskData(title: "ジョギングする", completed: false),
        TaskData(title: "お花に水をやる", completed: false),
        TaskData(title: "部屋の掃除をする", completed: false),
        TaskData(title: "本を読む", completed: false)
    ]
    
    var body: some View {
        NavigationStack {
            List(0..<taskData.count, id:\.self) { index in
                Button {
                    taskData[index].completed.toggle()
                } label: {
                    HStack {
                        taskData[index].completed ?
                        Image(systemName: "checkmark.circle.fill") :
                        Image(systemName: "circle")
                        Text(taskData[index].title)
                    }.foregroundColor(.primary)
                }
                
            }.navigationTitle("ToDoリスト")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
