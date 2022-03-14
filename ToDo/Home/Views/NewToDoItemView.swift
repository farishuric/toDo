//
//  NewToDoItemView.swift
//  ToDo
//
//  Created by Faris Hurić on 4. 3. 2022..
//

import SwiftUI

struct NewToDoItemView: View {
    
    @ObservedObject var homeViewModel: HomeViewModel
    
    @State var toDoName: String = ""
    @State var toDoDesc: String = ""
    @State var value: Priority = .low
    var placeholder: String = "Select to do priority"
    
    var body: some View {
        VStack {
            
            Spacer().frame(height: 30)
            
            HStack {
                Spacer()
                Text("Add new to do")
                    .font(AppFont.bold(size: 32))

                Spacer()
            }
            
            
            VStack {
                VStack(alignment: .leading) {
                    
                    Text("Enter to do name")
                        .foregroundColor(Color.gray)
                        .font(AppFont.thin())
                    
                    TextField("", text: $toDoName)
                        .padding(.all, 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.orange, lineWidth: 1)
                        )
                    
                }
                .padding()
                
                
                VStack(alignment: .leading) {
                    
                    Text("Add to do description below")
                        .foregroundColor(Color.gray)
                        .font(AppFont.thin())
                    
                    TextEditor(text: $toDoDesc)
                        .padding(.all, 10)
                        .frame(height: 150)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.orange, lineWidth: 1)
                        )
                }
                .padding()
                
                VStack {
                    Menu {
                        ForEach(homeViewModel.priorities, id: \.self) { priority in
                            Button(LocalizedStringKey(priority.rawValue)) {
                                self.value = priority
                            }
                        }
                    } label: {
                        VStack(spacing: 5){
                            HStack{
                                Text(LocalizedStringKey(value.rawValue))
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.down")
                                    .foregroundColor(AppColor.mainAppColor)
                                    .font(Font.system(size: 20, weight: .bold))
                            }
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.orange, lineWidth: 1)
                            )
                            
                            
                        }
                        .padding()
                    }
                }
            }
            
            
            Spacer()
            
            HStack {
                GlobalButton(
                    action: homeViewModel.closeNewToDoScreen,
                    label: "cancelButton.text".localized
                )
              
                    
                
                Spacer().frame(width: 50)
                
                GlobalButton(action: {
                    homeViewModel.addNewToDo(name: toDoName, description: toDoDesc, priority: value)
                    homeViewModel.closeNewToDoScreen()
                }, label: "doneButton.text".localized
                )
                    
                
            }
            
            Spacer().frame(height: 30)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct NewToDoItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoItemView(homeViewModel: HomeViewModel())
    }
}
