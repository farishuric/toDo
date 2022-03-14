//
//  OrangeButton.swift
//  ToDo
//
//  Created by Faris Hurić on 7. 3. 2022..
//

import Foundation
import SwiftUI

struct OrangeButton: ViewModifier {

    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(Color.white)
            .background(AppColor.mainAppColor)
            .cornerRadius(10)
            .frame(width: 120)
    }
    
}
