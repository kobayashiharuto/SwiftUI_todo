//
//  ContentView.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/28.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var taskController: TaskController
  
  var body: some View {
    NavigationView {
      List {
        ForEach(taskController.tasks, id:\.self) { task in
          NavigationLink(destination: TaskAddView(task: task)) {
            Text(task.title)
          }
        }
        .onDelete(perform: { indexSet in
          taskController.tasks.remove(atOffsets: indexSet)
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
      .environmentObject(TaskController())
  }
}
