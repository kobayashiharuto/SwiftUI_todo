//
//  todo_add.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/28.
//

import SwiftUI

struct TaskDetailView: View {
  @EnvironmentObject var taskController: TaskController
  var task: Task
  
  var taskIndex: Int {
    taskController.tasks.firstIndex(where: {$0.id == task.id})!
  }
  
  var body: some View {
    ScrollView(.vertical) {
      VStack {
        HStack {
          Text(task.title).font(.title).bold()
          CheckButton(isDone: $taskController.tasks[taskIndex].isDone)
          Spacer()
        }
        .padding(.horizontal)
        
      }
      .frame(maxWidth: .infinity)
    }
  }
}

struct TaskDetailView_Previews: PreviewProvider {
  static var previews: some View {
    TaskDetailView(task: Task(id: 1, title: "Study"))
      .environmentObject(TaskController())
  }
}
