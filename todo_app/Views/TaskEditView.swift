//
//  TaskEditView.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/31.
//

import SwiftUI

struct TaskEditView: View {
  @Environment(\.presentationMode) var presentationMode
  @EnvironmentObject var taskController: TaskController
  var index: Int
  var task: Task
  @State private var title: String
  @State private var desc: String
  
  init (index: Int, task: Task) {
    self.index = index
    self.task = task
    _title = State(initialValue: task.title)
    _desc = State(initialValue: task.desc)
  }
  
  var body: some View {
    VStack (alignment: .leading) {
      HStack {
        Button("Cancel") {
          self.presentationMode.wrappedValue.dismiss()
        }
        Spacer()
        Button(action: {
          let updatedTask = Task(id: task.id, title: title, desc: desc)
          taskController.updateTask(task: updatedTask)
          self.presentationMode.wrappedValue.dismiss()
        }) {
          Text("Done").bold()
        }
      }
      .padding(.vertical)
      
      Text("Title").font(.title2).bold()
      TextField("Title", text: $title)
        .textFieldStyle(RoundedBorderTextFieldStyle())
      
      Text("Desc").font(.title2).bold()
      TextField("Desc", text: $desc)
        .textFieldStyle(RoundedBorderTextFieldStyle())
      Spacer()
    }
    .padding(.horizontal)
  }
}

struct TaskEditView_Previews: PreviewProvider {
  static var tasks = TaskController().tasks
  
  static var previews: some View {
    TaskEditView(index: 0, task: tasks[0])
      .environmentObject(TaskController())
  }
}
