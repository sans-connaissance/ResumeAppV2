//
//  CertificateDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct CertificateDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Certificate
    
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
                    if let issuer = resumeItem.issuer {
                        Text(issuer)
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

struct CertificateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CertificateDetailView(isPresented: .constant(true), resumeItem: leBienLeJusteCert)
    }
}
