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
    case appStore
    case dataStructures
    case demos
    case education
    case experience
    case iOSTraining
    case projects

    var title: String {
        switch self {
        case .appStore:
            return "Apps"
        case .dataStructures:
            return "Data Structures"
        case .demos:
            return "Demos"
        case .education:
            return "Education"
        case .experience:
            return "Experience"
        case .iOSTraining:
            return "iOS Training"
        case .projects:
            return "Projects"
        }
    }
}

enum Size: String, CaseIterable {
    case small
    case medium
    case large
}
