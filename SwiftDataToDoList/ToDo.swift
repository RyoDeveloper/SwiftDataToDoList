//
//  ToDo.swift
//  SwiftDataToDoList
//
//  https://github.com/RyoDeveloper/SwiftDataToDoList
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import Foundation
import SwiftData

@Model
class ToDo {
    var isCompleted: Bool = false
    var title: String = ""

    init(isCompleted: Bool, title: String) {
        self.isCompleted = isCompleted
        self.title = title
    }
}
