//
//  WhiteButton.swift
//  ResumeApp
//
//  Created by David Malicke on 1/7/22.
//

import SwiftUI

struct WhiteButton: View {
    var text: String
    var imageName: String

    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .font(.system(size: 16))
                    .bold()
                Spacer()

            }
            .padding(.vertical, 6)
//            .foregroundColor(.white)
//            .background(Color.black)
            .cornerRadius(3.0)
        }
        .padding([.leading, .trailing])
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            WhiteButton(text: "Play", imageName: "play.fill") {
                //
            }
        }
    }
}
