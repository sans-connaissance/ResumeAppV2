//
//  SkillListView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/30/22.
//

import SwiftUI

struct SkillListView: View {
    var skillArray: [Skill]
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
                    ForEach(skillArray) { resumeItem in
                        NavigationLink {
                            SkillDetailView(isPresented: $isPresented, resumeItem: resumeItem)
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
            //  .background(LinearGradient.blackOpacityGradient)
        }
    }
}

struct SkillListView_Previews: PreviewProvider {
    static var previews: some View {
        if let skillArray = davidMalicke.skills {
            SkillListView(skillArray: skillArray, size: .small, isPresented: .constant(true))
        }
    }
}
