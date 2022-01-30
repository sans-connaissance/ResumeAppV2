//
//  ResumeListByItem.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/29/22.
//

import SwiftUI

struct EducationListView: View {
    var vm: HomeVM
    var size: Size
    
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
                    ForEach(vm.educationArray) { resumeItem in
                        NavigationLink {
                            //ResumeItemDetailView(resumeItem: resumeItem)
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
            .background(LinearGradient.blackOpacityGradient)
        }
    }
}

struct EducationListView_Previews: PreviewProvider {
    static var previews: some View {
        EducationListView(vm: HomeVM(), size: .small)
    }
}