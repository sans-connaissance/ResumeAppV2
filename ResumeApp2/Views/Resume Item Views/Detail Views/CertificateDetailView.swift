//
//  CertificateDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct CertificateDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Certificate
    
    var body: some View {
        Text("CertificateDetailView")
    }
}

struct CertificateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CertificateDetailView()
    }
}
