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
  
  var index: Int {
    taskController.tasks.firstIndex(where: { $0.id == task.id })!
  }
  
  var body: some View {
    ScrollView(.vertical) {
      VStack (alignment: .leading) {
        HStack {
          Text(task.title).font(.title).bold()
          CheckButton(isDone: $taskController.tasks[index].isDone)
          Spacer()
        }
        .padding(.bottom)
        Text(task.desc)
      }
      .padding(.horizontal)
      .frame(maxWidth: .infinity)
    }
  }
}

struct TaskDetailView_Previews: PreviewProvider {
  static var tasks = TaskController().tasks
  
  static var previews: some View {
    TaskDetailView(task: tasks[0])
      .environmentObject(TaskController())
  }
}
