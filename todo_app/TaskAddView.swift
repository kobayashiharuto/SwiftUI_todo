//
//  todo_add.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/28.
//

import SwiftUI

struct TaskAddView: View {
  var task: String
    var body: some View {
        Text(task)
    }
}

struct TaskAddView_Previews: PreviewProvider {
    static var previews: some View {
      TaskAddView(task: "hoge")
    }
}
