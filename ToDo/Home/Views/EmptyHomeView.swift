//
//  EmptyHomeView.swift
//  ToDo
//
//  Created by Faris Hurić on 6. 3. 2022..
//

import SwiftUI

struct EmptyHomeView: View {
    
    @ObservedObject var homeViewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            
                ZStack {
                    VStack {
                        
                        Spacer()
                        
                        VStack {
                            Text("Welcome to \n To Do application")
                                .fontWeight(.bold)
                                .textCase(.uppercase)
                                .foregroundColor(.secondary)
                                .font(AppFont.medium(size: 32))
                                .multilineTextAlignment(.center)
                            Text("helloUser".localized(arguments: "Faris"))
                            
                            Spacer().frame(height: 15)
                            
                            Text("Press + button to add new to do")
                                .font(AppFont.thin(size: 18))
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        

                    }
                    
                    VStack {
                        Spacer()
                        NewToDoButton(homeViewModel: homeViewModel)
                    }
                }

            
        }
    }
}

struct EmptyHomeView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyHomeView(homeViewModel: HomeViewModel())
    }
}
