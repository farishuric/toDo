//
//  ContentView.swift
//  ToDo
//
//  Created by Faris Hurić on 4. 3. 2022..
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            if homeViewModel.toDoList.isEmpty {
                EmptyHomeView(homeViewModel: homeViewModel)
            } else {
                HomeView(homeViewModel: homeViewModel)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
