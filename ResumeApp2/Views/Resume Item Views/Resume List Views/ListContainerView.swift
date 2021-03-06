//
//  ListContainerView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/29/22.
//

import SwiftUI

struct ListContainerView: View {
    var array: [Any]
    var category: Category
    var size: Size
    @Binding var isPresented: Bool

    // MAYBE HAVE TO USE ANY HERE. then USE @VIEWBUILDER TO BUILD FROM A GENERIC VIEW BASED ON WHAT WAS PASSED INTO ANY.
    var body: some View {
        if category == .work {
            if let workArray = array as? [Work] {
                WorkListView(workArray: workArray, size: size, isPresented: $isPresented)
                  //  .background(LinearGradient.blackOpacityGradient)
            }
            
        } else if category == .volunteer {
            if let volunteerArray = array as? [Volunteer] {
                VolunteerListView(volunteerArray: volunteerArray, size: size, isPresented: $isPresented)
                  //  .background(LinearGradient.blackOpacityGradient)
            }
            
        } else if category == .education {
            if let educationArray = array as? [Education] {
                EducationListView(educationArray: educationArray, size: size, isPresented: $isPresented)
                  //  .background(LinearGradient.blackOpacityGradient)
            }
            
        } else if category == .award {
            if let awardArray = array as? [Award] {
                AwardListView(awardArray: awardArray, size: size, isPresented: $isPresented)
                  //  .background(LinearGradient.blackOpacityGradient)
            }
            
        } else if category == .certificate {
            if let certificateArray = array as? [Certificate] {
                CertificateListView(certificateArray: certificateArray, size: size, isPresented: $isPresented)
                  //  .background(LinearGradient.blackOpacityGradient)
            }
            
        } else if category == .publication {
            if let publicationArray = array as? [Publication] {
                PublicationListView(publicationArray: publicationArray, size: size, isPresented: $isPresented)
                  //  .background(LinearGradient.blackOpacityGradient)
            }
            
        } else if category == .skill {
            if let skillArray = array as? [Skill] {
                SkillListView(skillArray: skillArray, size: size, isPresented: $isPresented)
                  //  .background(LinearGradient.blackOpacityGradient)
            }
            
        } else if category == .language {
            if let languageArray = array as? [Language] {
                LanguageListView(languageArray: languageArray, size: size, isPresented: $isPresented)
                  //  .background(LinearGradient.blackOpacityGradient)
            }
            
        } else if category == .interest {
            if let interestArray = array as? [Interest] {
                InterestListView(interestArray: interestArray, size: size, isPresented: $isPresented)
                  //  .background(LinearGradient.blackOpacityGradient)
            }
            
        } else if category == .reference {
            if let referenceArray = array as? [Reference] {
                ReferenceListView(referenceArray: referenceArray, size: size, isPresented: $isPresented)
                   // .background(LinearGradient.blackOpacityGradient)
            }
            
        } else if category == .project {
            if let projectArray = array as? [Project] {
                ProjectListView(projectArray: projectArray, size: size, isPresented: $isPresented)
                  //  .background(LinearGradient.blackOpacityGradient)
            }
            
        } else if category == .video {
            if let videoArray = array as? [Video] {
                VideoListView(videoArray: videoArray, size: size, isPresented: $isPresented)
                  //  .background(LinearGradient.blackOpacityGradient)
            }
        }
    }
}

// struct ListContainerView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListContainerView()
//    }
// }
