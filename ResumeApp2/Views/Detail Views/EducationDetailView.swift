//
//  EducationDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/30/22.
//

import Kingfisher
import SwiftUI

struct EducationDetailView: View {
    var resumeItem: Education

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center) {
                EducationImageView(resumeItem: resumeItem)
                EducationInstitutionView(resumeItem: resumeItem)

                VStack(alignment: .center) {
                    EducationStudyTypeView(resumeItem: resumeItem)
                    EducationAreaView(resumeItem: resumeItem)

                }.padding(.bottom, -1)

                EducationInfoView(resumeItem: resumeItem)
            }
        }
    }
}

struct EducationImageView: View {
    var resumeItem: Education
    let screen = UIScreen.main.bounds
    var body: some View {
        if let imageString = resumeItem.thumbnail {
            ResumeItemImageView(imageString: imageString)
                .frame(width: screen.width)
                .padding(.top, -50)
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

struct EducationInstitutionView: View {
    var resumeItem: Education

    var body: some View {
        if let institution = resumeItem.institution {
            Text(institution)
                .font(.caption2.lowercaseSmallCaps())
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
        }
    }
}

struct EducationStudyTypeView: View {
    var resumeItem: Education

    var body: some View {
        if let studyType = resumeItem.studyType {
            Text(studyType)
                .font(.headline.smallCaps())
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .lineSpacing(-10)
        }
    }
}

struct EducationAreaView: View {
    var resumeItem: Education

    var body: some View {
        if let area = resumeItem.area {
            Text(area)
                .font(.headline.smallCaps())
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                
        }
    }
}

struct EducationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EducationDetailView(resumeItem: associateDegree)
    }
}
