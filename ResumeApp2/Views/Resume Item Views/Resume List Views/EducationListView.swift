//
//  ResumeListByItem.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/29/22.
//

import SwiftUI

struct EducationListView: View {
    var educationArray: [Education]
    var size: Size
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("Education")
                    .font(.title3)
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: -6) {
                    ForEach(educationArray) { resumeItem in
                        NavigationLink {
                            EducationDetailView(isPresented: $isPresented, resumeItem: resumeItem)
                        } label: {
                            VStack {
                                if let imageString = resumeItem.thumbnail {
                                    if size == .small {
                                        ResumeItemImageView(imageString: imageString)
                                            .modifier(SmallButton())
                                    } else if size == .medium {
                                        ResumeItemImageView(imageString: imageString)
                                            .modifier(MediumButton())
                                    } else if size == .large {
                                        ResumeItemImageView(imageString: imageString)
                                            .modifier(LargeButton())
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ///Adjust size of background gradient with modifiers here
            .padding(.bottom)
            // .background(LinearGradient.blackOpacityGradient)
        }
    }
}

struct EducationListView_Previews: PreviewProvider {
    static var previews: some View {
        if let educationArray = davidMalicke.education {
            EducationListView(educationArray: educationArray, size: .small, isPresented: .constant(true))
        }
    }
}
