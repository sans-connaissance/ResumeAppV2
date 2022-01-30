//
//  GlobalHelpers.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import Foundation
import SwiftUI

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.gray.opacity(0.01), Color.gray.opacity(0.15)]),
        startPoint: .top,
        endPoint: .bottom)
}

struct SmallButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 150, height: 75)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 0.2, x: 0.2, y: 0.2)
            .padding(.leading)
    }
}

struct MediumButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 0.2, x: 0.2, y: 0.2)
            .padding(.leading)
    }
}

struct LargeButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 300, height: 300, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 0.2, x: 0.2, y: 0.2)
            .padding(.leading)
    }
}

enum Category: String, CaseIterable {
    case work
    case volunteer
    case education
    case award
    case certificate
    case publication
    case skill
    case language
    case interest
    case reference
    case project
    case video

    var title: String {
        switch self {
        case .work:
            return "Experience"
        case .volunteer:
            return "Return"
        case .education:
            return "Education"
        case .award:
            return "Awards"
        case .certificate:
            return "Certificates"
        case .publication:
            return "Publications"
        case .skill:
            return "Skills"
        case .language:
            return "Languages"
        case .interest:
            return "Interests"
        case .reference:
            return "References"
        case .project:
            return "Projects"
        case .video:
            return "Videos"
        }
    }
}

enum Size: String, CaseIterable {
    case small
    case medium
    case large
}
