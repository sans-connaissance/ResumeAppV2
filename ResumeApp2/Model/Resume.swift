//
//  Resume.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/25/22.
// Schema is an extension of https://jsonresume.org

import Foundation

struct Resume: Identifiable {
    var id: String
    var basics: Basics?
    var work: [Work]?
    var volunteer: [Volunteer]?
    var education: [Education]?
    var awards: [Award]?
    var certificates: [Certificate]?
    var publications: [Publication]?
    var skills: [Skill]?
    var languages: [Language]?
    var interests: [Interest]?
    var references: [Reference]?
    var projects: [Project]?
}

struct Basics: Identifiable {
    var id: String
    var name: String?
    var label: String?
    var image: String?
    var email: String?
    var phone: String?
    var url: String?
    var summary: String?
    var location: Location?
    var profiles: [Profile]?
    var video: Video?
}

struct Location: Identifiable {
    var id: String
    var address: String?
    var postalCode: String?
    var city: String?
    var countryCode: String?
    var region: String?
}

struct Profile: Identifiable {
    var id: String
    var network: String?
    var username: String?
    var url: String?
    var thumbnail: String?
}

struct Work: Identifiable {
    var id: String
    var name: String?
    var department: String?
    var position: String?
    var url: String?
    var startDate: String?
    var endDate: String?
    var summary: String?
    var highlights: [String]?
    var thumbnail: String?
}

struct Volunteer: Identifiable {
    var id: String
    var organization: String?
    var position: String?
    var url: String?
    var startDate: String?
    var endDate: String?
    var summary: String?
    var highlights: [String]?
    var thumbnail: String?
}

struct Education: Identifiable {
    var id: String
    var institution: String?
    var schoolName: String?
    var degreeName: String?
    var specialization: String?
    var url: String?
    var area: String?
    var studyType: String?
    var startDate: String?
    var endDate: String?
    var score: String?
    var courses: [String]?
    var thumbnail: String?
}

struct Award: Identifiable {
    var id: String
    var title: String?
    var date: String?
    var awarder: String?
    var summary: String?
    var thumbnail: String?
}

struct Certificate: Identifiable {
    var id: String
    var name: String?
    var date: String?
    var issuer: String?
    var url: String?
    var thumbnail: String?
}

struct Publication: Identifiable {
    var id: String
    var name: String?
    var publisher: String?
    var releaseDate: String?
    var url: String?
    var summary: String?
    var thumbnail: String?
}

struct Skill: Identifiable {
    var id: String
    var name: String?
    var level: String?
    var thumbnail: String?
    var keywords: [String]?
}

struct Language: Identifiable {
    var id: String
    var language: String?
    var fluency: String?
    var thumbnail: String?
}

struct Interest: Identifiable {
    var id: String
    var name: String?
    var keywords: [String]?
    var thumbnail: String?
}

struct Reference: Identifiable {
    var id: String
    var name: String?
    var reference: String?
    var thumbnail: String?
}

struct Project: Identifiable {
    var id: String
    var name: String?
    var description: String?
    var highlights: [String]?
    var keywords: [String]?
    var startDate: String?
    var endDate: String?
    var url: String?
    var roles: [String]?
    var entity: String?
    var type: String?
    var thumbnail: String?
    var thumbnails: [String]?
    var videos: [Video]?
}

struct Video: Identifiable {
    var id: String
    var name: String?
    var videoURL: String?
    var thumbnail: String?
}
