//
//  HomeView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/27/22.
//

import SwiftUI
import Kingfisher

struct ResumeHomeView: View {
    @StateObject private var vm = ResumeHomeVM()
    var resume: Resume
    let screen = UIScreen.main.bounds
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                // main VStack
                ScrollView(showsIndicators: false) {
                    // change this to VStack to remove skipping while running
                    VStack {
                        
                        LargeTopView(skill: vm.skillTest, basics: vm.basics)
                            .frame(width: screen.width, height: screen.height / 3)
                          // .padding(.top, -110)
                        ListContainerView(array: vm.educationArray, category: .education, size: .medium, isPresented: $isPresented)
                        ListContainerView(array: vm.educationArray, category: .education, size: .medium, isPresented: $isPresented)
                        ListContainerView(array: vm.educationArray, category: .education, size: .medium, isPresented: $isPresented)
                        ListContainerView(array: vm.educationArray, category: .education, size: .medium, isPresented: $isPresented)
                    }
                }
            }
            .onAppear(perform: {vm.setupResumeArrays(resume: resume)})
            .navigationTitle(vm.name)
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button {
                isPresented = false
            } label: {
                Image(systemName: "x.circle.fill")
                    .font(.body)
            })
        }
    }
}

struct ResumeHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ResumeHomeView(resume: davidMalicke, isPresented: .constant(true))
            .preferredColorScheme(.light)
    }
}
