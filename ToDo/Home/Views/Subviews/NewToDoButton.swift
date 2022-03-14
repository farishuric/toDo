//
//  NewToDoButton.swift
//  ToDo
//
//  Created by Faris Hurić on 6. 3. 2022..
//

import SwiftUI

struct NewToDoButton: View {
    
    @ObservedObject var homeViewModel: HomeViewModel
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                NavigationLink(
                    destination: NewToDoItemView(homeViewModel: homeViewModel),
                    isActive: $homeViewModel.isNewToDoScreenActive
                ) {
                    Image(systemName: "plus")
                        .padding(.all, 20)
                        .font(.title)
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                        .clipShape(Circle())
                        .frame(width: 80, height: 80, alignment: .center)
                }
                Spacer().frame(width: 15)
            }    
        }
        .background(Color.white.opacity(0))
    }
}

struct NewToDoButton_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoButton(homeViewModel: HomeViewModel())
    }
}
