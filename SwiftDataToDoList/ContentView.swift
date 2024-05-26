//
//  ContentView.swift
//  SwiftDataToDoList
//
//  https://github.com/RyoDeveloper/SwiftDataToDoList
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Query private var toDos: [ToDo]
    @Environment(\.modelContext) private var modelContext
    @State private var newToDoTitle = ""

    var body: some View {
        List {
            Section {
                TextField("ToDoを追加", text: $newToDoTitle)
                    .submitLabel(.done)
                    .onSubmit {
                        let newNote = ToDo(isCompleted: false, title: newToDoTitle)
                        modelContext.insert(newNote)
                        newToDoTitle = ""
                    }
            }
            Section {
                ForEach(toDos, id: \.self) { toDo in
                    @Bindable var toDo = toDo
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
                .onDelete(perform: { indexSet in
                    for index in indexSet {
                        modelContext.delete(toDos[index])
                    }
                })
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ToDo.self)
}
