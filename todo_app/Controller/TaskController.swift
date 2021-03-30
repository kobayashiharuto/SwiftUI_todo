//
//  TaskController.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/29.
//

import Foundation

final class TaskController: ObservableObject {
  @Published var tasks : [Task] = loadMockTasks()
  
  static func loadMockTasks() -> [Task] {
    let mockTasks = [
      Task(id: "task1", title: "Study", desc: "This task is super important.\nI understand Apple."),
    ]
    return mockTasks
  }
}


