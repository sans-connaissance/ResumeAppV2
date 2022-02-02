//
//  ListContainerView2.swift
//  ResumeApp2
//
//  Created by David Malicke on 2/2/22.
//

import SwiftUI

struct ListContainerView2: View {
    
    var array: [Any]
    var category: Category
    var size: Size
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    @ViewBuilder
    private func getListView(array:[Any], category: Category, size: Size) -> some View {
        if category == .work {
            if let converted = array as? [Work] {
            WorkListView2(vm: converted, size: size)
                .background(LinearGradient.blackOpacityGradient)
            }
//        } else if category == .volunteer {
//            VolunteerListView(vm: array, size: size)
//                .background(LinearGradient.blackOpacityGradient)
//        } else if category == .education {
//            EducationListView(vm: array, size: size)
//                .background(LinearGradient.blackOpacityGradient)
//        } else if category == .award {
//            AwardListView(vm: array, size: size)
//                .background(LinearGradient.blackOpacityGradient)
//        } else if category == .certificate {
//            CertificateListView(vm: array, size: size)
//                .background(LinearGradient.blackOpacityGradient)
//        } else if category == .publication {
//            PublicationListView(vm: array, size: size)
//                .background(LinearGradient.blackOpacityGradient)
//        } else if category == .skill {
//            SkillListView(vm: array, size: size)
//                .background(LinearGradient.blackOpacityGradient)
//        } else if category == .language {
//            LanguageListView(vm: array, size: size)
//                .background(LinearGradient.blackOpacityGradient)
//        } else if category == .interest {
//            InterestListView(vm: array, size: size)
//                .background(LinearGradient.blackOpacityGradient)
//        } else if category == .reference {
//            ReferenceListView(vm: array, size: size)
//                .background(LinearGradient.blackOpacityGradient)
//        } else if category == .project {
//            ProjectListView(vm: array, size: size)
//                .background(LinearGradient.blackOpacityGradient)
//        } else if category == .video {
//            VideoListView(vm: array, size: size)
//                .background(LinearGradient.blackOpacityGradient)
//        }

    }
    }
}
//
//struct ListContainerView2_Previews: PreviewProvider {
//    static var previews: some View {
//        ListContainerView2()
//    }
//}
