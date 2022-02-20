//
//  ReferenceDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct ReferenceDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Reference
    
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
                    if let name = resumeItem.name {
                        Text(name)
                            .font(.headline.smallCaps())
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .lineSpacing(-10)
                    }
                    if let reference = resumeItem.reference {
                        Text(reference)
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
struct ReferenceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ReferenceDetailView(isPresented: .constant(true), resumeItem: katie)
    }
}
