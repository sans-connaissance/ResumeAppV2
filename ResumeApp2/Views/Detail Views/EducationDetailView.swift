//
//  EducationDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/30/22.
//

import Kingfisher
import SwiftUI

struct EducationDetailView: View {
    // @StateObject private var vm = EducationDetailVM()
    var resumeItem: Education
    let screen = UIScreen.main.bounds

    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                // TopImage
                if let imageString = resumeItem.thumbnail {
                    ResumeItemImageView(imageString: imageString)
                        .frame(width: screen.width)
                        .padding(.top, -50)
                    //    .padding(.bottom)
                }
                Spacer()
                HStack(spacing: 2) {
                    Spacer()
                    Image(systemName: "graduationcap.circle")
                        .font(.footnote)
                    Text("EDUCATION")
                        .font(.caption2)
                        .fontWeight(.bold)
                    Spacer()
                }
                ///.padding(.leading)
                .padding(.bottom, 1)
                EducationTitlesView(resumeItem: resumeItem)
            }
        }
        //  .onAppear(perform: {vm.unwrap(resumeItem: resumeItem)})
    }
}

struct EducationInfoView: View {
    var resumeItem: Education
    
    var body: some View {
        HStack {
            Text(resumeItem.startDate)
            Text(resumeItem.endDate)
            
        }
    }
}

struct EducationTitlesView: View {
    var resumeItem: Education

    var body: some View {
        VStack {
            if let institution = resumeItem.institution {
                HStack {
                    Spacer()
                    Text(institution)
                        .font(.footnote)
                        .fontWeight(.bold)
                       // .padding(.leading)
                    if let schoolName = resumeItem.schoolName {
                        HStack {
                            Text(schoolName)
                                .font(.footnote)
                                .fontWeight(.bold)
                        }
                    }

                    Spacer()
                }
            }

            if let degreeName = resumeItem.degreeName {
                HStack {
                    Spacer()
                    Text(degreeName)
                        .font(.title2)
                        .fontWeight(.heavy)
                        //.padding(.leading)
                    Spacer()
                }
            }
            if let specialization = resumeItem.specialization {
                HStack {
                    Spacer()
                    Text(specialization)
                        .font(.title3)
                        .fontWeight(.semibold)
                       // .padding(.leading)
                    Spacer()
                }
            }
        }
    }
}

struct EducationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EducationDetailView(resumeItem: masterDegree)
    }
}
