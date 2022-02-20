//
//  AwardDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct AwardDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Award
    
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
                    if let title = resumeItem.title {
                        Text(title)
                            .font(.headline.smallCaps())
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .lineSpacing(-10)
                    }
                    if let awarder = resumeItem.awarder {
                        Text(awarder)
                            .font(.headline.smallCaps())
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                    }
                }.padding(.bottom, -1)
                
                if let date = resumeItem.date {
                    HStack {
                        Text(date)
                            .font(.caption2.lowercaseSmallCaps())
                            .fontWeight(.regular)
                    }
                }
                
                
                /// SUMMARY
                VStack(alignment: .leading) {
                    if let summary = resumeItem.summary {
                        Text("Summary")
                            .font(.caption2)
                            .fontWeight(.bold)
                        Text(summary)
                            .font(.caption2)
                            .fontWeight(.regular)
                    }
                }.padding()
                
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
    
    struct AwardDetailView_Previews: PreviewProvider {
        static var previews: some View {
            AwardDetailView(isPresented: .constant(true), resumeItem: phiKappaPhi)
        }
    }
