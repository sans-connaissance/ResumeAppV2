//
//  InterestDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct InterestDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Interest
    
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
                    if let keywords = resumeItem.keywords {
                        VStack(alignment: .leading) {
                            Text("Keywords")
                                .font(.caption2)
                                .fontWeight(.bold)
                            ForEach(keywords, id: \.self) { keyword in
                                HStack {
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                    Text(keyword)
                                        .font(.caption2)
                                        .fontWeight(.regular)
                                }.padding(.bottom, 5)
                            }
                        }.padding()
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

struct InterestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        InterestDetailView(isPresented: .constant(true), resumeItem: programming)
    }
}
