//
//  LargeTopView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/27/22.
//

import Kingfisher
import SwiftUI

struct LargeTopView: View {
    var skill: Skill
    var basics: Basics
    
    func isLastCategory(_ cat: String) -> Bool {
        if let catCount = skill.keywords?.count {
            if let index = skill.keywords?.firstIndex(of: cat) {
                if index + 1 != catCount {
                    return false
                }
            }
            return true
        }
        return true
    }
    
    
    var body: some View {
        ZStack {
            if let imageString = basics.image {
                KFImage(URL(string: imageString))
                    .resizable()
                    .scaledToFill()
                    .clipped()
            }
            
            VStack {
                Spacer()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        
                        ForEach(skill.keywords!, id: \.self) { category in
                            HStack {
                                Text(category)
                                    .font(.footnote)
                                if !isLastCategory(category) {
                                    Image(systemName: "circle.fill")
                                        .foregroundColor(.blue)
                                        .font(.system(size: 3))
                                }
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //
                    }
                    Spacer()
                    WhiteButton(text: "play", imageName: "play.fill") {
                        
                    }.frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    Spacer()
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct LargeTopView_Previews: PreviewProvider {
    static var previews: some View {
        LargeTopView(skill: davidMalicke.skills![0], basics: davidMalicke.basics!)
    }
}
