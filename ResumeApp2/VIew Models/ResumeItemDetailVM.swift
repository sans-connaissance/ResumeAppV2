//
//  EducationDetailVM.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/1/22.
//

import Foundation
import SwiftUI

class ResumeItemDetailVM: ObservableObject {
    
    //THIS NEEDS TO BE RENAMED DOESN"T MAKE SENSE
   // @Published var educationDetailViewArray: [Education] = []
    @Published var educationDetailViewProjects: [Project] = []
    @Published var workDetailViewProjects: [Project] = []
    
    
    func setupWorkArrays(resumeItem: Work) {
        if let workProjects: [Project] = davidMalicke.projects {
            for item in workProjects {
                //TO DO: Figure out how to change this based on a passed in string by the user.
                if item.entity == "Frankfurt Industries" {
                    workDetailViewProjects.append(item)
                }
            }
        }
    }
    
    func setupEducationArrays(resumeItem: Education) {
        if let educationProjects: [Project] = davidMalicke.projects {
            for item in educationProjects {
                if item.entity == "Master Degree" {
                    educationDetailViewProjects.append(item)
                }
            }
        }
    }
}
