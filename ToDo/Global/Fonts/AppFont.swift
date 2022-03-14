//
//  AppFont.swift
//  ToDo
//
//  Created by Faris Hurić on 7. 3. 2022..
//

import Foundation
import SwiftUI

struct AppFont {
    static func thin(size: CGFloat = 18) -> Font {
        Font.custom("Poppins-Thin", size: size)
    }
    
    static func medium(size: CGFloat = 18) -> Font {
        Font.custom("Poppins-Medium", size: size)
    }
    
    static func bold(size: CGFloat = 18) -> Font {
        Font.custom("Poppins-Bold", size: size)
    }
}
