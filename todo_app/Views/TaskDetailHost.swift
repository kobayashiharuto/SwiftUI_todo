//
//  TaskDetailEditNavi.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/31.
//

import SwiftUI

struct TaskDetailHost: View {
  @Environment(\.editMode) var editMode
  var index: Int
  var task: Task
  
  var body: some View {
    ScrollView {
      VStack {
        if (editMode?.wrappedValue == .inactive) {
          TaskDetailView(index: index, task: task)
        } else {
          
        }
        Spacer()
      }
      .padding()
      .frame(width: .infinity)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          EditButton()
        }
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
