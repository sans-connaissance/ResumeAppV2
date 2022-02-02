//
//  EducationDetailVM.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/1/22.
//

import Foundation
import SwiftUI

class EducationDetailVM: ObservableObject {
    @Published var educationDetailViewArray: [Education] = []
    
//    init() {
//        setupEducationArrays()
//    }
    
    func setupEducationArrays(resumeItem: Education) {
        if let educationItems: [Education] = davidMalicke.education {
            for item in educationItems {
                if item.id != resumeItem.id && item.educationType == "formal" {
                    educationDetailViewArray.append(item)
                }
            }
        }
        
    }
}
