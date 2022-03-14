//
//  HideNavBar.swift
//  ToDo
//
//  Created by Faris Hurić on 7. 3. 2022..
//

import Foundation
import SwiftUI

struct HideNavBar: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationTitle("")
            .navigationBarHidden(true)
    }
}
