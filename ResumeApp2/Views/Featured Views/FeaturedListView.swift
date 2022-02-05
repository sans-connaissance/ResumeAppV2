//
//  FeaturedListView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/4/22.
//

import SwiftUI

struct FeaturedListView: View {
    @StateObject private var vm = FeaturedListVM()
    @State private var showModalView = false
    
    var body: some View {
//        NavigationView {
            List {
                ForEach(vm.resumeArray, id: \.self) { resume in
                    if let name = resume.basics?.name {
                        Button {
                            showModalView = true
                        } label: {
                            Text(name)
                        }.fullScreenCover(isPresented: $showModalView) {
                            HomeView(resume: resume, isPresented: $showModalView)
                        }
                    //                    NavigationLink {
                    //                        HomeView(resume: resume)
                    //                    } label: {
                    //                        if let name = resume.basics?.name {
                    //                        Text(name)
                    //                        }
                    //                    }
                }
//                }
//
            }
        }
    }
}

struct FeaturedListView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedListView()
    }
}
