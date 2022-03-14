//
//  Extensions.swift
//  ToDo
//
//  Created by Faris Hurić on 9. 3. 2022..
//

import Foundation

extension String {
    
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
    
    func localized(arguments: CVarArg...) -> String {
        String(format: self.localized, arguments: arguments)
    }
    
}
