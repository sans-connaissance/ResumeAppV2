//
//  ResumeItemImageView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/27/22.
//
import Kingfisher
import SwiftUI

struct ResumeItemImageView: View {
    var imageString: String
    
    var body: some View {
        KFImage(URL(string: imageString))
            .resizable()
            .scaledToFill()
    }
}

struct ResumeItemImageView_Previews: PreviewProvider {
    static var previews: some View {
        if let imageString = masterDegree.thumbnail {
            ResumeItemImageView(imageString: imageString)
        }
    }
}
