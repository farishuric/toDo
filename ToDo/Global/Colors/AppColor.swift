//
//  AppColor.swift
//  ToDo
//
//  Created by Faris Hurić on 7. 3. 2022..
//

import Foundation
import SwiftUI

//tema

// mainTheme
// partyTheme
// beachTheme

enum AppTheme {
    case main
    case party
    case beach
}

class AppColor: ObservableObject {
    
    static var theme: AppTheme = .main
    
    static var mainAppColor: Color {
        get {
            switch theme {
            case .main:
                return Color("MainAppColor")
            default:
                return Color("MainAppColor")
            }
        }
    }
    
//    static let mainAppColor: Color = Color("MainAppColor")
    
    
    
    static let lowPriorityColor: Color = Color("LowPriorityColor")
    static let mediumPriorityColor: Color = Color("MediumPriorityColor")
    static let highPriorityColor: Color = Color("HighPriorityColor")
}
