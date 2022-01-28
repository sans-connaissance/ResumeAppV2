//
//  HomeVM.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/27/22.
//

import Foundation
import SwiftUI

class HomeVM: ObservableObject {
    
    @Published var educationArray: [Education] = []
    @Published var experienceArray: [Work] = []
    @Published var projectArray: [Project] = []
    @Published var certificateArray: [Certificate] = []
    
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
    }
}
