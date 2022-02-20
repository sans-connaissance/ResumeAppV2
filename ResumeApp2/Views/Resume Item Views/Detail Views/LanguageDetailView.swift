//
//  LanguageDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct LanguageDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Language
    
    var body: some View {
        Text("LanguageDetailView")
    }
}

struct LanguageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageDetailView(isPresented: .constant(true), resumeItem: french)
    }
}
