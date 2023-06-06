//
//  Extensions.swift
//  MeditationApp
//
//  Created by Timotius Leonardo Lianoto on 06/06/23.
//

import Foundation

extension DateComponentsFormatter {
    static let abbreviated: DateComponentsFormatter = {
        print("Imitializeng DateComponentsFormatter.abbreviated")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
        return formatter
    }()
    
    static let positional: DateComponentsFormatter = {
        print("Imitializeng DateComponentsFormatter.positional")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        return formatter
    }()
}
