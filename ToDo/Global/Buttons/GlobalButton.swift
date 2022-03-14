//
//  GlobalButton.swift
//  ToDo
//
//  Created by Faris Hurić on 6. 3. 2022..
//

import SwiftUI

struct GlobalButton: View {
    
    let action: () -> Void
    let label: String
    
    
    var body: some View {
        VStack {
            Button {
                action()
            } label: {
                Text(label)
                    .font(AppFont.medium(size: 20))
            }
            .modifier(OrangeButton())
            

        }
    }
}

struct GlobalButton_Previews: PreviewProvider {
    static var previews: some View {
        GlobalButton(
            action: {
                print("Test")
            },
            label: "Test"
        )
    }
}
