//
//  SwiftDataToDoListApp.swift
//  SwiftDataToDoList
//
//  https://github.com/RyoDeveloper/SwiftDataToDoList
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import SwiftData
import SwiftUI

@main
struct SwiftDataToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDo.self)
        }
    }
}
