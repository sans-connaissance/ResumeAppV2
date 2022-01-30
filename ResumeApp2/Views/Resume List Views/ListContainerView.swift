//
//  ListContainerView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/29/22.
//

import SwiftUI

struct ListContainerView: View {
    var vm: HomeVM
    var category: Category
    var size: Size
    
    var body: some View {
        if category == .education {
            EducationListView(vm: vm, size: size)
        }
    }
}

//struct ListContainerView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListContainerView()
//    }
//}
