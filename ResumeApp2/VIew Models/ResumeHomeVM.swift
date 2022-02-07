//
//  HomeVM.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/27/22.
//

import Foundation
import SwiftUI

class ResumeHomeVM: ObservableObject {
    
    @Published var experienceArray: [Work] = []
    @Published var volunteerArray: [Volunteer] = []
    @Published var educationArray: [Education] = []
    @Published var awardArray: [Award] = []
    @Published var certificateArray: [Certificate] = []
    @Published var publicationArray: [Publication] = []
    @Published var skillArray: [Skill] = []
    @Published var languageArray: [Language] = []
    @Published var interestArray: [Interest] = []
    @Published var referenceArray: [Reference] = []
    @Published var projectArray: [Project] = []
    @Published var videoArray: [Video] = []
    

    //How does this work in the real app?
    //OR is it that you initialize a blank type?
    //Probably have to unwrap an array.
    @Published var skillTest: Skill = davidMalicke.skills![0]
    @Published var basics: Basics = davidMalicke.basics!
    @Published var name: String = davidMalicke.basics!.name!
    
//    init() {
//        basics
//    }
//
    //is this were future calls will go to pull from server?
    
    func setupResumeArrays(resume: Resume) {
        
        if let basics = resume.basics {
            self.basics = basics
        }
        
        if let educationItems: [Education] = resume.education {
            for item in educationItems {
                if item.educationType == "formal" {
                educationArray.append(item)
                }
            }
        }
        if let workItems: [Work] = resume.work {
            for item in workItems {
                experienceArray.append(item)
            }
        }
        if let projectItems: [Project] = resume.projects {
            for item in projectItems {
                projectArray.append(item)
            }
        }
        if let certificateItem: [Certificate] = resume.certificates {
            for item in certificateItem {
                certificateArray.append(item)
            }
        }
        //Can this be done differently so that in the view we're not adding [0] to end of variable call.
        if let skillItems: [Skill] = resume.skills {
            for item in skillItems {
                skillArray.append(item)
            }
        }
    }
}
