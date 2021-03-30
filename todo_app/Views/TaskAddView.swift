//
//  TaskAddView.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/29.
//

import SwiftUI

struct TaskAddView: View {
  @Environment(\.presentationMode) var presentationMode
  @EnvironmentObject var taskController: TaskController
  @State private var title: String = ""
  @State private var desc: String = ""
  
  var body: some View {
    VStack (alignment: .leading) {
      HStack {
        Button("Cancel") {
          self.presentationMode.wrappedValue.dismiss()
        }
        Spacer()
        Button(action: {
          let id = NSUUID().uuidString
          let task = Task(id: id, title: title, desc: desc)
          taskController.tasks.append(task)
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

struct TaskAddView_Previews: PreviewProvider {
  static var previews: some View {
    TaskAddView()
      .environmentObject(TaskController())
  }
}
