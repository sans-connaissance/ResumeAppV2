//
//  InterestDetailView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/19/22.
//

import SwiftUI

struct InterestDetailView: View {
    @StateObject private var vm = ResumeItemDetailVM()
    @State var showCourses: Bool = false
    @Binding var isPresented: Bool
    let screen = UIScreen.main.bounds
    let resumeItem: Interest
    
    var body: some View {
        Text("InterestDetailView")
    }
}

struct InterestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        InterestDetailView()
    }
}
