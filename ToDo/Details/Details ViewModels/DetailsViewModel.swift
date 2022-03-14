//
//  DetailsViewModel.swift
//  ToDo
//
//  Created by Faris Hurić on 9. 3. 2022..
//

import Foundation


class DetailsViewModel: ObservableObject {
   
    @Published var isDetailsScreenActive: Bool = false
    @Published var selectedtoDoItem: ToDoItem? = nil
    
    
    func closeDetailsScreen() {
        isDetailsScreenActive = false
    }
    
    
}



