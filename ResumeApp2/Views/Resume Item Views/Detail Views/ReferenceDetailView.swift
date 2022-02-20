//
//  ReferenceDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct ReferenceDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Reference
    
    var body: some View {
        Text("ReferenceDetailView")
    }
}

struct ReferenceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ReferenceDetailView(isPresented: .constant(true), resumeItem: katie)
    }
}
