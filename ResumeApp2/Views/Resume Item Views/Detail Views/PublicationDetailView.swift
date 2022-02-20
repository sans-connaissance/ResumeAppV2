//
//  PublicationDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct PublicationDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Publication
    
    var body: some View {
        Text("PublicationDetailView")
    }
}

struct PublicationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PublicationDetailView()
    }
}
