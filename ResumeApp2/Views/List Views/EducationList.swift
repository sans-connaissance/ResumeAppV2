//
//  ResumeListByItem.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/29/22.
//

import SwiftUI

struct EducationList: View {
    var vm: HomeVM
    
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
                                    ResumeItemImageView(imageString: imageString)
                                        .modifier(SmallButton())
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

//struct EducationList: PreviewProvider {
//    static var previews: some View {
//        EducationList()
//    }
//}
