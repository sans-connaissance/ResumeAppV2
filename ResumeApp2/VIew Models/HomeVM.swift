//
//  HomeVM.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/27/22.
//

import Foundation
import SwiftUI

class HomeVM: ObservableObject {
    
    @Published var resume: Resume = davidMalicke
    
    @Published var educationArray: [Education] = []
    @Published var experienceArray: [Work] = []
    @Published var projectArray: [Project] = []
    @Published var certificateArray: [Certificate] = []
    @Published var skillArray: [Skill] = []
    
    
    init() {
        setupResumeItems()
    }
    
    //is this were future calls will go to pull from server?
    func setupResumeItems() {
        if let educationItems: [Education] = davidMalicke.education {
            for item in educationItems {
                educationArray.append(item)
            }
        }
        if let workItems: [Work] = davidMalicke.work {
            for item in workItems {
                experienceArray.append(item)
            }
        }
        if let projectItems: [Project] = davidMalicke.projects {
            for item in projectItems {
                projectArray.append(item)
            }
        }
        if let certificateItem: [Certificate] = davidMalicke.certificates {
            for item in certificateItem {
                certificateArray.append(item)
            }
        }
        //Can this be done differently so that in the view we're not adding [0] to end of variable call.
        if let skillItems: [Skill] = davidMalicke.skills {
            for item in skillItems {
                skillArray.append(item)
            }
        }
        
        if let basics = davidMalicke.basics {
            
        }
        
    }
}
