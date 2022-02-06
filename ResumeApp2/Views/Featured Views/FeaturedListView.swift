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
            List {
                ForEach(vm.resumeArray, id: \.self) { resume in
                    if let name = resume.basics?.name {
                        Button {
                            showModalView = true
                        } label: {
                            Text(name)
                        }.fullScreenCover(isPresented: $showModalView) {
                            ResumeHomeView(resume: resume, isPresented: $showModalView)
                        }

                }
            }
        }
    }
}

struct FeaturedListView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedListView()
    }
}
