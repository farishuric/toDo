//
//  ToDoItem.swift
//  ToDo
//
//  Created by Faris Hurić on 4. 3. 2022..
//

import Foundation


struct ToDoItem: Identifiable, Hashable {
    let id: UUID = UUID()
    let name: String
    let description: String
    let priority: Priority
}
