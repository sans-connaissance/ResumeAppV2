//
//  EducationDetailVM.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/1/22.
//

import Foundation
import SwiftUI

class EducationDetailVM: ObservableObject {
    
    //THIS NEEDS TO BE RENAMED DOESN"T MAKE SENSE
    @Published var educationDetailViewArray: [Education] = []
    @Published var educationDetailViewProjects: [Project] = []
    
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
        
        if let educationProjects: [Project] = davidMalicke.projects {
            for item in educationProjects {
                if item.entity == "Master Degree" {
                    educationDetailViewProjects.append(item)
                }
            }
        }
        
    }
}
