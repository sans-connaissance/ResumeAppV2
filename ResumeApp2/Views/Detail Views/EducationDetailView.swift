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
    let screen = UIScreen.main.bounds
    
    var body: some View {
        
        VStack {
            ScrollView(showsIndicators: false) {
                //TopImage
                ZStack {
                    if let imageString = resumeItem.thumbnail {
                        ResumeItemImageView(imageString: imageString)
                            .frame(width: screen.width)
                            .padding(.top, -110)
                            .padding(.bottom)
                    }
                }
                //Rather than all these if lets... create a view model that calls everything based on the id passed in
                Spacer()
                HStack{
                    Text(resumeItem.institution!)
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(.leading)
                    Spacer()
                }
                HStack{
                    Text(resumeItem.schoolName!)
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding(.leading)
                    Spacer()
                }
                HStack{
                    Text(resumeItem.degreeName!)
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.leading)
                    Spacer()
                }
                HStack{
                    Text(resumeItem.specialization!)
                        .font(.title3)
                        .fontWeight(.regular)
                        .padding(.leading)
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
