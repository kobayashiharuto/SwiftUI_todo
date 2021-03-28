//
//  TaskModel.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/29.
//

import Foundation
import SwiftUI

struct Task: Hashable, Codable {
  var id: Int
  var title: String
  var isDone = false
  // var desc: String
}
