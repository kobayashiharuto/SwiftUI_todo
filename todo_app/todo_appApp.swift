//
//  todo_appApp.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/28.
//

import SwiftUI

@main
struct todo_appApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView().environmentObject(TaskController())
    }
  }
}
