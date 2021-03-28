//
//  ContentView.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/28.
//

import SwiftUI

struct ContentView: View {
  let mockTask = ["aaa", "bbb", "ccc", "ddd", "eee", "fff", "ggg", "hhh", "iii"]
    var body: some View {
      List(mockTask, id:\.self) { task in
        Text(task)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
