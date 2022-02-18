//
//  EducationCourseListView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/17/22.
//

import SwiftUI

struct EducationCourseListView: View {
    
    let courses: [String]
    
    var body: some View {
        List {
            ForEach(courses, id: \.self) { course in
                Text(course)
            }
        }.listStyle(.sidebar)
    }
}

struct EducationCourseListView_Previews: PreviewProvider {
    static var previews: some View {
        EducationCourseListView(courses: davidMalicke.education![0].courses!)
    }
}
