//
//  TaskModel.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/29.
//

import Foundation
import SwiftUI

class Task: Identifiable {
  var id: String
  var title: String
  var desc: String
  var isDone: Bool
  var createdAtDate: Date
  var createdAtStr: String
  
  init(id: String, title: String, desc: String) {
    self.id = id
    self.title = title
    self.desc = desc
    self.isDone = false
    self.createdAtDate = Date()
    
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd HH:mm"
    self.createdAtStr = formatter.string(from: createdAtDate)
    print(self.createdAtDate)
    print(self.createdAtStr)
  }
}
