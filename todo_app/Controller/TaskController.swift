//
//  TaskController.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/29.
//

import Foundation

final class TaskController: ObservableObject {
  @Published var tasks : [Task] = loadMockTasks()
}

func loadMockTasks() -> [Task] {
  let mockTasks = [
    Task(id: 0, title: "aaa"),
    Task(id: 1, title: "bbb"),
    Task(id: 2, title: "ccc"),
  ]
  
  return mockTasks
}
