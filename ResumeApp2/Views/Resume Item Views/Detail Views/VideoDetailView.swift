//
//  VideoDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct VideoDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Video
    
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
                    if let videoURL = resumeItem.videoURL {
                        ResumeItemImageView(imageString: videoURL)
                            .frame(width: screen.width)
                        // .padding(.top, -50)
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

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(isPresented: .constant(true), resumeItem: testVideo)
    }
}
