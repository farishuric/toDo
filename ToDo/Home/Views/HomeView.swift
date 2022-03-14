//
//  HomeView.swift
//  ToDo
//
//  Created by Faris Hurić on 4. 3. 2022..
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var homeViewModel: HomeViewModel
    @ObservedObject var detailsViewModel = DetailsViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    
                    VStack {
                        
                        VStack {
                            
                            Spacer().frame(height: 30)
                            
                            Text("Get work done")
                                .font(.largeTitle)
                            
                            List(homeViewModel.toDoList, id: \.self) { todo in
                                Button(action: {
                                    detailsViewModel.selectedtoDoItem = todo
                                    detailsViewModel.isDetailsScreenActive = true
                                }) {
                                    HomeRowView(toDo: todo)
                                }
                                .swipeActions {
                                    Button {
                                        homeViewModel.toDoList.remove(at: 0)
                                    } label: {
                                        Text("Delete")
                                    }
                                    .tint(.red)
                                }
                            }
                            
                            NavigationLink(
                                destination: ToDoDetailsView(detailsViewModel: detailsViewModel),
                                isActive: $detailsViewModel.isDetailsScreenActive
                            ) {
                                
                            }
                        }
                    }
                    
                    VStack {
                        Spacer()
                        NewToDoButton(homeViewModel: homeViewModel)
                    }
                }
                
                
                
            }
            .navigationBarHidden(true)
            
        }
        
        
    }
    
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView(homeViewModel: HomeViewModel())
        }
    }
}
