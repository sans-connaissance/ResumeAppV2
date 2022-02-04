//
//  HomeView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/27/22.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    @StateObject private var vm = HomeVM()
    @Environment(\.presentationMode) var presentationMode
    var resume: Resume
    let screen = UIScreen.main.bounds
    
    var body: some View {
        NavigationView {
            VStack {
                // main VStack
                ScrollView(showsIndicators: false) {
                    // change this to VStack to remove skipping while running
                    VStack {
                        LargeTopView(skill: vm.skillTest, basics: vm.basics)
                            .frame(width: screen.width)
                            .padding(.top, -110)
                        ListContainerView(array: vm.educationArray, category: .education, size: .medium)
                    }
                }
            }
            .onAppear(perform: {vm.setupResumeArrays(resume: resume)})
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "x.circle.fill")
                    .font(.title2)
            })
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(resume: davidMalicke)
    }
}
