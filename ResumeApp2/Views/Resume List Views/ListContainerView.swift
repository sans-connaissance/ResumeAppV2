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
    
    // MAYBE HAVE TO USE ANY HERE. then USE @VIEWBUILDER TO BUILD FROM A GENERIC VIEW BASED ON WHAT WAS PASSED INTO ANY.
    var body: some View {
        if category == .work {
            WorkListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        } else if category == .volunteer {
            VolunteerListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        } else if category == .education {
            EducationListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        } else if category == .award {
            AwardListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        } else if category == .certificate {
            CertificateListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        } else if category == .publication {
            PublicationListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        } else if category == .skill {
            SkillListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        } else if category == .language {
            LanguageListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        } else if category == .interest {
            InterestListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        } else if category == .reference {
            ReferenceListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        } else if category == .project {
            ProjectListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        } else if category == .video {
            VideoListView(vm: vm, size: size)
                .background(LinearGradient.blackOpacityGradient)
        }
    }
}

//struct ListContainerView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListContainerView()
//    }
//}
