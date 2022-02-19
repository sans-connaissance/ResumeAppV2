//
//  EducationDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/30/22.
//

import Kingfisher
import SwiftUI

struct EducationDetailView: View {
    @StateObject private var vm = EducationDetailVM()
    var resumeItem: Education
    @Binding var isPresented: Bool
    @State var showCourses: Bool = false
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center) {
                /// TOP IMAGE
                if let imageString = resumeItem.thumbnail {
                    ResumeItemImageView(imageString: imageString)
                        .frame(width: screen.width)
                    // .padding(.top, -50)
                }
                
                /// INSTITUTION
                if let institution = resumeItem.institution {
                    Text(institution)
                        .font(.caption2.lowercaseSmallCaps())
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, -5)
                }
                
                /// STUDY TYPE AND AREA OF STUDY
                VStack(alignment: .center) {
                    if let studyType = resumeItem.studyType {
                        Text(studyType)
                            .font(.headline.smallCaps())
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .lineSpacing(-10)
                    }
                    if let area = resumeItem.area {
                        Text(area)
                            .font(.headline.smallCaps())
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                    }
                    
                }.padding(.bottom, -1)
                
                EducationInfoView(resumeItem: resumeItem)
                    .padding(.bottom)
                
                if let courses = resumeItem.courses {
                    WhiteButton(text: "Courses", imageName: "book") {
                        showCourses = true
                    }.sheet(isPresented: $showCourses) {
                        EducationCourseListView(courses: courses)
                    }
                }
            }.padding(.bottom)
            
            /// DESCRIPTION
            VStack(alignment: .leading) {
                if let description = resumeItem.description {
                    Text("Description")
                        .font(.caption2)
                        .fontWeight(.bold)
                    Text(description)
                        .font(.caption2)
                        .fontWeight(.regular)
                }
            }.padding(.leading)
            
            // THESE NEED TO BE MADE CONDITIONAL IN CASE THEY DONT EXIST
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ListContainerView(array: vm.educationDetailViewProjects, category: .project, size: .small, isPresented: $isPresented)
                }
            }
        }
        .onAppear(perform: { vm.setupEducationArrays(resumeItem: resumeItem) })
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button {
            isPresented = false
        } label: {
            Image(systemName: "x.circle.fill")
                .font(.title2)
        })
    }
}

struct EducationInfoView: View {
    var resumeItem: Education
    
    var body: some View {
        HStack {
            if let startDate = resumeItem.startDate {
                HStack {
                    Text(startDate)
                        .font(.caption2.lowercaseSmallCaps())
                        .fontWeight(.regular)
                }
            }
            if let endDate = resumeItem.endDate {
                HStack {
                    Text(endDate)
                        .font(.caption2.lowercaseSmallCaps())
                        .fontWeight(.regular)
                }
            }
            if let gpa = resumeItem.score {
                HStack {
                    Text("GPA")
                        .font(.caption2.lowercaseSmallCaps())
                        .fontWeight(.regular)
                    Text(gpa)
                        .font(.caption2.lowercaseSmallCaps())
                        .fontWeight(.regular)
                }
            }
            if let location = resumeItem.location {
                HStack(spacing: 2) {
                    Image(systemName: "globe")
                        .font(.caption2)
                    Text(location)
                        .font(.caption2)
                        .fontWeight(.regular)
                }
            }
        }
    }
}

struct EducationTagView: View {
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "graduationcap.circle")
                .font(.footnote)
            Text("EDUCATION")
                .font(.caption2)
                .fontWeight(.bold)
        }
    }
}

struct EducationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EducationDetailView(resumeItem: masterDegree, isPresented: .constant(true), showCourses: false)
        }
    }
}
