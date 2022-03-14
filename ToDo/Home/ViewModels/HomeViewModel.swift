//
//  HomeViewModel.swift
//  ToDo
//
//  Created by Faris Hurić on 4. 3. 2022..
//

import Foundation
import SwiftUI


class HomeViewModel: ObservableObject {
    
    @Published var toDoList: [ToDoItem] = [
        ToDoItem(
            name: "Learn SwiftUI",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc purus libero, fermentum a viverra id, euismod et massa. Nam dignissim a dolor non porttitor. Fusce et risus sed nisl faucibus semper id a eros. Aenean rhoncus sem consectetur tellus pulvinar, nec facilisis eros ullamcorper.",
            priority: .high
        ),
        ToDoItem(
            name: "Learn MVVM architecture",
            description: "Nullam lacinia quam at cursus ornare. Sed egestas lacinia magna, sit amet dapibus sapien ornare id. Duis accumsan mi vitae mi vestibulum, sed pharetra massa ornare. Integer bibendum nunc libero, quis scelerisque enim gravida vel. Suspendisse porta purus turpis, ac lobortis augue viverra sed. Integer vel placerat mauris, ut dignissim turpis. Donec aliquet nulla orci, in scelerisque magna imperdiet vitae. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
            priority: .medium
        ),
        ToDoItem(
            name: "Learn MVVM architecture",
            description: "Nullam lacinia quam at cursus ornare. Sed egestas lacinia magna, sit amet dapibus sapien ornare id. Duis accumsan mi vitae mi vestibulum, sed pharetra massa ornare. Integer bibendum nunc libero, quis scelerisque enim gravida vel. Suspendisse porta purus turpis, ac lobortis augue viverra sed. Integer vel placerat mauris, ut dignissim turpis. Donec aliquet nulla orci, in scelerisque magna imperdiet vitae. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
            priority: .low
        )
    ]
    
    
    //    @Published var toDoList: [ToDoItem] = []
    
    @Published var isNewToDoScreenActive: Bool = false
    

    
    @Published var priorities: [Priority] = Priority.allCases
    
    
    
    func closeNewToDoScreen() {
        isNewToDoScreenActive = false
    }
    

    func addNewToDo(name: String, description: String, priority: Priority) {
        let newToDoItem = ToDoItem(name: name, description: description, priority: priority)
        toDoList.append(newToDoItem)
    }
    
    func checkPriority(priority: Priority) -> Color{
        switch priority {
        case .low:
            return Color.green
        case .medium:
            return Color.yellow
        case .high:
            return Color.red
        }
    }
    
}

enum Priority: String, CaseIterable {
    case low = "lowPriority.text"
    case medium = "mediumPriority.text"
    case high = "highPriority.text"
    
    var color: Color {
        switch self {
        case .low:
            return AppColor.lowPriorityColor
        case .medium:
            return AppColor.mediumPriorityColor
        case .high:
            return AppColor.highPriorityColor
        }
    }
}
