//
//  VolunteerDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct VolunteerDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Volunteer
    
    
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
                    if let organization = resumeItem.organization {
                        Text(organization)
                            .font(.headline.smallCaps())
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .lineSpacing(-10)
                    }
                    if let position = resumeItem.position {
                        Text(position)
                            .font(.headline.smallCaps())
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                    }
                }.padding(.bottom, -1)
                
                VolunteerInfoView(resumeItem: resumeItem)
                    .padding(.bottom)
                
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
                
                if let highlights = resumeItem.highlights {
                    VStack(alignment: .leading) {
                        Text("Highlights")
                            .font(.caption2)
                            .fontWeight(.bold)
                        ForEach(highlights, id: \.self) { highlight in
                            HStack {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 5))
                                Text(highlight)
                                    .font(.caption2)
                                    .fontWeight(.regular)
                            }.padding(.bottom, 5)
                        }
                    }.padding()
                }
            }
            if let projects = vm.workDetailViewProjects {
                if projects.count > 0 {
                    ScrollView(showsIndicators: false) {
                        LazyVStack {
                            ListContainerView(array: projects, category: .project, size: .small, isPresented: $isPresented)
                        }
                    }
                }
            }
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

struct VolunteerInfoView: View {
    var resumeItem: Volunteer
    
    var body: some View {
        HStack {
            if let startDate = resumeItem.startDate {
                HStack {
                    Text(startDate)
                        .font(.caption2.lowercaseSmallCaps())
                        .fontWeight(.regular)
                }
            }
            if let endDate = resumeItem.endDate {
                HStack {
                    Text(endDate)
                        .font(.caption2.lowercaseSmallCaps())
                        .fontWeight(.regular)
                }
            }
            if let url = resumeItem.url {
                HStack(spacing: 2) {
                    Image(systemName: "globe")
                        .font(.caption2)
                    Link(destination: URL(string: url)!) {
                        Text("Website")
                            .font(.caption2)
                            .fontWeight(.regular)
                    }
                }
            }
        }
    }
}

struct VolunteerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VolunteerDetailView(isPresented: .constant(true), resumeItem: altSpringBreak)
    }
}
