//
//  ContentView.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/28.
//

import SwiftUI

struct ContentView: View {
  @State var mockTask = ["aaa", "bbb", "ccc", "ddd", "eee", "fff", "ggg", "hhh", "iii"]
    var body: some View {
      NavigationView {
        List {
          ForEach(mockTask, id:\.self) { task in
            NavigationLink(destination: TaskAddView(task: task)) {
              Text(task)
            }
          }
          .onDelete(perform: { indexSet in
            mockTask.remove(atOffsets: indexSet)
          })
        }
        .navigationTitle("TODO")
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: {}) {
              Image(systemName: "plus")
            }
          }
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
