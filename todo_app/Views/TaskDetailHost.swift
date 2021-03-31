//
//  TaskDetailEditNavi.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/31.
//

import SwiftUI

struct TaskDetailHost: View {
  @EnvironmentObject var taskController: TaskController
  @State var isPresentedSheet = false
  var index: Int
  @State var task: Task
  
  var body: some View {
    TaskDetailView(index: index, task: task)
    .toolbar {
      ToolbarItem(placement: .navigationBarTrailing) {
        Button("Edit") {
          isPresentedSheet.toggle()
        }
      }
    }
    .sheet(isPresented: $isPresentedSheet) {
      TaskEditView(index: index, task: task)
        .onDisappear() {
          task = taskController.tasks[index]
        }
    }
  }
}

struct TaskDetailHost_Previews: PreviewProvider {
  static var tasks = TaskController().tasks
  
  static var previews: some View {
    TaskDetailHost(index: 0, task: tasks[0])
      .environmentObject(TaskController())
  }
}
