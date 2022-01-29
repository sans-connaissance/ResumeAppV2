//
//  SmallResumeItemListView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/29/22.
//

import SwiftUI

struct SmallResumeItemListView: View {
    
    var vm: HomeVM
    var category: Category
    
    var body: some View {
        VStack {
            HStack {
                Text(category.title)
                    .font(.title3)
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: -6) {
                    
                    //can I add a switch here for switching to different category types?
                    //can pass in the size for each one
                    //then create different types with overlays etc.
                    ForEach(vm.educationArray) { resumeItem in
                        NavigationLink {
                            //ResumeItemDetailView(resumeItem: resumeItem)
                        } label: {
                            VStack {
                                if let imageString = resumeItem.thumbnail {
                                ResumeItemImageView(imageString: imageString)
                                    .modifier(SmallButton())
                                }
                            }
                        }
                    }
                }
            }
            ///Adjust size of background gradient with modifiers here
            .padding(.bottom)
            .background(LinearGradient.blackOpacityGradient)
        }
    }
}

//struct SmallResumeItemListView_Previews: PreviewProvider {
//    static var previews: some View {
//        SmallResumeItemListView()
//    }
//}
