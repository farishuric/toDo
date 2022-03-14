//
//  HomeRowView.swift
//  ToDo
//
//  Created by Faris Hurić on 7. 3. 2022..
//

import SwiftUI

struct HomeRowView: View {
    
    let toDo: ToDoItem
    
    var body: some View {
        VStack {
            HStack{
                HStack {
                    Text(toDo.name)
                        .padding()
                        .font(AppFont.thin())
                    Spacer()
                    Image(systemName: "info.circle.fill")
                        .foregroundColor(toDo.priority.color)
                        .padding()
                }
            }
        }
    }
}

struct HomeRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeRowView(toDo: ToDoItem(name: "Test cell", description: "This is basic test for description", priority: .high))
    }
}
