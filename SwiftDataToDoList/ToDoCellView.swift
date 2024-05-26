//
//  ToDoCellView.swift
//  SwiftDataToDoList
//
//  https://github.com/RyoDeveloper/SwiftDataToDoList
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import SwiftUI

struct ToDoCellView: View {
    @Binding var toDo: ToDo

    var body: some View {
        HStack {
            Button {
                toDo.isCompleted.toggle()
            } label: {
                Image(systemName: toDo.isCompleted ? "circle.inset.filled" : "circle")
            }

            TextField("タイトルを入力", text: $toDo.title)
                .submitLabel(.done)
        }
    }
}

#Preview {
    ToDoCellView(toDo: .constant(ToDo(isCompleted: false, title: "title")))
}
