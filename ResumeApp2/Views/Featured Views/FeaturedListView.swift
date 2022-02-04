//
//  FeaturedListView.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/4/22.
//

import SwiftUI

struct FeaturedListView: View {
    @StateObject private var vm = FeaturedListVM()
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(vm.resumeArray, id: \.self) { resume in
                    NavigationLink {
                        Text("Hi")
                    } label: {
                        Text(resume.basics!.name!)
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
