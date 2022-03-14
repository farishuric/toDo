//
//  ToDoDetailsView.swift
//  ToDo
//
//  Created by Faris Hurić on 6. 3. 2022..
//

import SwiftUI

struct ToDoDetailsView: View {
    
    @ObservedObject var detailsViewModel: DetailsViewModel
    
    var body: some View {
        if let toDo = detailsViewModel.selectedtoDoItem {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Spacer().frame(height: 30)
                        VStack(alignment: .leading) {
                            HStack{
                                Spacer()
                                Text(toDo.name)
                                    .font(AppFont.medium(size: 32))
                                Spacer()
                            }
                        }
                        Spacer().frame(height: 50)
                        VStack(alignment: .leading) {
                            Text("More info: ")
                                .font(AppFont.medium())
                                .foregroundColor(.secondary)
                            Text(toDo.description)
                                .font(AppFont.medium(size: 20))
                        }
                        
                        Spacer().frame(height: 50)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Priority: ")
                                    .font(AppFont.medium())
                                    .foregroundColor(.secondary)
                                HStack{
                                    Text(LocalizedStringKey(toDo.priority.rawValue))
                                        .font(AppFont.medium(size: 20))
                                    Image(systemName: "info.circle.fill")
                                        .foregroundColor(toDo.priority.color)
                                    
                                }
                                
                                
                            }
                            Spacer()
                        }
                        
                        HStack {
                            Spacer()
                            GlobalButton(action: detailsViewModel.closeDetailsScreen, label: "Back")
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    .padding()
                    Spacer()
                }
            }
            .modifier(HideNavBar())
        } else {
            EmptyView()
        }
        
    }
}

struct ToDoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDetailsView(detailsViewModel: DetailsViewModel())
    }
}
