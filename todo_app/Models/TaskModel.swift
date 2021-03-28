//
//  TaskModel.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/29.
//

import Foundation
import SwiftUI

class Task: ObservableObject {
  var id: String
  var title: String
  var desc: String
  var isDone = false
  
  init(id: String, title: String, desc: String) {
    self.id = id
    self.title = title
    self.desc = desc
  }
}
