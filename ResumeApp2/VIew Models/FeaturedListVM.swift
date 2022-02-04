//
//  FeaturedListVM.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/4/22.
//

import Foundation
import SwiftUI

class FeaturedListVM: ObservableObject {
    
    
    @Published var resumeArray: [Resume] = resumeStore

    
    func getResumes() {
        
//        var resumes: [Resume] = resumeStore {
//            for item in resumes {
//                resumeArray.append(item)
//            }
//        }
        
    }
    
}
