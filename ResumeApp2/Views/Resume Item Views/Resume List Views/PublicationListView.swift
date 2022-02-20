//
//  PublicationListView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/30/22.
//

import SwiftUI

struct PublicationListView: View {
    var publicationArray: [Publication]
    var size: Size
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("Publications")
                    .font(.title3)
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: -6) {
                    ForEach(publicationArray) { resumeItem in
                        NavigationLink {
                            PublicationDetailView(isPresented: $isPresented, resumeItem: resumeItem)
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
            //   .background(LinearGradient.blackOpacityGradient)
        }
    }
}

struct PublicationListView_Previews: PreviewProvider {
    static var previews: some View {
        if let publicationArray = davidMalicke.publications {
            PublicationListView(publicationArray: publicationArray, size: .small, isPresented: .constant(true))
        }
    }
}
