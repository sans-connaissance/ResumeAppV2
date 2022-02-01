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
                ZStack {
                    if let imageString = resumeItem.thumbnail {
                        ResumeItemImageView(imageString: imageString)
                            .frame(width: screen.width)
                            .padding(.top, -50)
                        //    .padding(.bottom)
                    }
                }
                Spacer()
                EducationTitleView(resumeItem: resumeItem)
            }
        }
        //  .onAppear(perform: {vm.unwrap(resumeItem: resumeItem)})
    }
}

struct EducationTitleView: View {
    
    var resumeItem: Education
    
    var body: some View {
        VStack {
            if let institution = resumeItem.institution {
                HStack {
                    
                    Text(institution)
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.leading)
                    Spacer()
                }
            }
            if let schoolName = resumeItem.schoolName {
                HStack {
                    Spacer()
                    Text(schoolName)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .padding(.trailing)
                        .padding(.bottom)
                    //Spacer()
                }
            }
            
            VStack {
                if let degreeName = resumeItem.degreeName {
                    HStack {
                        Text(degreeName)
                            .font(.body)
                            .fontWeight(.light)
                            .padding(.leading)
                        Spacer()
                    }
                }
                if let specialization = resumeItem.specialization {
                    HStack {
                        Text(specialization)
                            .font(.title3)
                            .fontWeight(.light)
                            .padding(.leading)
                        Spacer()
                    }
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
