//
//  CheckButton.swift
//  todo_app
//
//  Created by 小林春斗 on 2021/03/28.
//

import SwiftUI

struct CheckButton: View {
  @Binding var isDone: Bool
  
  var body: some View {
    Button(action: {
      isDone.toggle()
    }) {
      Image(systemName: isDone ? "checkmark.circle.fill" : "checkmark.circle")
        .font(.title2)
    }
  }
}

struct CheckButton_Previews: PreviewProvider {
  static var previews: some View {
    CheckButton(isDone: .constant(true))
  }
}
