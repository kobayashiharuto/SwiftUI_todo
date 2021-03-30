//
//  CheckButton.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/28.
//

import SwiftUI

struct CheckButton: View {
  @EnvironmentObject var taskController: TaskController
  @State var isDone: Bool = false
  var index: Int
  
  var body: some View {
    Button(action: {
      isDone.toggle()
      taskController.tasks[index].isDone = isDone
    }) {
      Image(systemName: isDone ? "checkmark.circle.fill" : "checkmark.circle")
        .font(.title2)
    }
    .onAppear {
      isDone = taskController.tasks[index].isDone
    }
  }
}

struct CheckButton_Previews: PreviewProvider {
  static var previews: some View {
    CheckButton(index: 0)
      .environmentObject(TaskController())
  }
}
