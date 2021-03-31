//
//  todo_add.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/28.
//

import SwiftUI

struct TaskDetailView: View {
  @EnvironmentObject var taskController: TaskController
  var index: Int
  var task: Task
  
  var body: some View {
    ScrollView {
      VStack (alignment: .leading) {
        HStack {
          Text(task.title)
            .font(.title)
            .bold()
          CheckButton(index: index)
          Spacer()
        }
        Spacer().frame(height: 10)
        
        HStack {
          Image(systemName: "clock")
          Text(task.createdAtStr)
        }
        .font(.subheadline)
        
        Divider()
        
        Text(task.desc)
          .font(.body)
      }
      .padding()
    }
  }
}

struct TaskDetailView_Previews: PreviewProvider {
  static var tasks = TaskController().tasks
  
  static var previews: some View {
    TaskDetailView(index: 0, task: tasks[0])
      .environmentObject(TaskController())
  }
}
