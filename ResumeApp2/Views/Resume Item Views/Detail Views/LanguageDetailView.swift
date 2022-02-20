//
//  LanguageDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct LanguageDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Language
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center) {
                /// TOP IMAGE
                if let imageString = resumeItem.thumbnail {
                    ResumeItemImageView(imageString: imageString)
                        .frame(width: screen.width)
                    // .padding(.top, -50)
                }
                VStack(alignment: .center) {
                    if let language = resumeItem.language {
                        Text(language)
                            .font(.headline.smallCaps())
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .lineSpacing(-10)
                    }
                    if let fluency = resumeItem.fluency {
                        Text(fluency)
                            .font(.headline.smallCaps())
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                    }
                }.padding(.bottom, -1)
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button {
                isPresented = false
            } label: {
                Image(systemName: "x.circle.fill")
                    .font(.title2)
            })
        }
    }
}

struct LanguageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageDetailView(isPresented: .constant(true), resumeItem: french)
    }
}
