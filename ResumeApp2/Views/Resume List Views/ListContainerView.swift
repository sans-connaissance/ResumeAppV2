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
        
        if category == .work {
            WorkListView(vm: vm, size: size)
        } else if category == .volunteer {
            VolunteerListView(vm: vm, size: size)
        } else if category == .volunteer {
            VolunteerListView(vm: vm, size: size)
        } else if category == .volunteer {
            VolunteerListView(vm: vm, size: size)
        } else if category == .volunteer {
            VolunteerListView(vm: vm, size: size)
        } else if category == .volunteer {
            VolunteerListView(vm: vm, size: size)
        } else if category == .volunteer {
            VolunteerListView(vm: vm, size: size)
        } else if category == .volunteer {
            VolunteerListView(vm: vm, size: size)
        } else if category == .volunteer {
            VolunteerListView(vm: vm, size: size)
        } else if category == .volunteer {
            VolunteerListView(vm: vm, size: size)
        } else if category == .volunteer {
            VolunteerListView(vm: vm, size: size)
        } else {
            VolunteerListView(vm: vm, size: size)
        }
    }
}

//struct ListContainerView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListContainerView()
//    }
//}
