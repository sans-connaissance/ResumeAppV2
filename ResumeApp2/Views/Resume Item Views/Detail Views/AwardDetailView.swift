//
//  AwardDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct AwardDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Award
    
    var body: some View {
        Text("AwardDetailView")
    }
}

struct AwardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AwardDetailView(isPresented: .constant(true), resumeItem: phiKappaPhi)
    }
}
