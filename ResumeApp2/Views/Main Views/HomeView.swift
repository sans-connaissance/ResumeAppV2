//
//  HomeView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/27/22.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    let screen = UIScreen.main.bounds

    var body: some View {
        NavigationView {
            VStack {
                // main VStack
                ScrollView(showsIndicators: false) {
                    // change this to VStack to remove skipping while running
                    LazyVStack {
                        LargeTopView(skill: vm.skillArray[0], basics: vm.basics)
                            .frame(width: screen.width)
                            .padding(.top, -110)
                        ListContainerView(array: vm.educationArray, category: .education, size: .medium)
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
