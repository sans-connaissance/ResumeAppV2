//
//  WorkDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct WorkDetailView: View {
    @Environment(\.defaultMinListRowHeight) var minRowHeight
    @StateObject private var vm = EducationDetailVM()
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    var resumeItem: Work
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center) {
                /// TOP IMAGE
                
                if let imageString = resumeItem.thumbnail {
                    ResumeItemImageView(imageString: imageString)
                        .frame(width: screen.width)
                    // .padding(.top, -50)
                }
                
                /// NAME
                if let name = resumeItem.name {
                    Text(name)
                        .font(.caption2.lowercaseSmallCaps())
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, -5)
                }
                
                /// DEPARTMENT AND POSITION
                VStack(alignment: .center) {
                    if let department = resumeItem.department {
                        Text(department)
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
                
                WorkInfoView(resumeItem: resumeItem)
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
            // THESE NEED TO BE MADE CONDITIONAL IN CASE THEY DONT EXIST
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ListContainerView(array: vm.educationDetailViewProjects, category: .project, size: .small, isPresented: $isPresented)
                }
            }
        }
        // .onAppear(perform: { vm.setupEducationArrays(resumeItem: resumeItem) })
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button {
            isPresented = false
        } label: {
            Image(systemName: "x.circle.fill")
                .font(.title2)
        })
    }
}

struct WorkInfoView: View {
    var resumeItem: Work
    
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

struct WorkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkDetailView(isPresented: .constant(true), resumeItem: frankfurtIndustries)
    }
}
