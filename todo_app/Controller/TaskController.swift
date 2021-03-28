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
    Task(id: 0, title: "Study"),
    Task(id: 1, title: "Dance"),
    Task(id: 2, title: "Game"),
  ]
  
  return mockTasks
}
