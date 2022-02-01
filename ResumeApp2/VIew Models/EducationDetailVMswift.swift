//
//  EducationDetailVMswift.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/30/22.
//

import Foundation
import SwiftUI

class EducationDetailVM: ObservableObject {
    @Published var institution = String()
    @Published var schoolName = String()
    @Published var degreeName = String()
    @Published var specialization = String()
    @Published var url = String()
    @Published var area = String()
    @Published var studyType = String()
    @Published var startDate = String()
    @Published var endDate = String()
    @Published var score = String()
    @Published var thumbnail = String()
    @Published var courses: [String] = []
    
    
    func unwrap(resumeItem: Education) {
        if let string = resumeItem.institution {
            institution = string
        }
        
        
        
        
    }
}
