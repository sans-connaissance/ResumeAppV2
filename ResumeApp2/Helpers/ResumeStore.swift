//
//  ResumeStore.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/25/22.
//

import Foundation

let resumeStore: [Resume] = [davidMalicke]

let davidMalicke = Resume(
    id: UUID().uuidString,
    basics: basics,
    work: [frankfurtIndustries],
    volunteer: nil,
    education: [masterDegree, bachelorDegree, associateDegree, hackingWithSwift],
    awards: nil, // are the academic things worth putting here?
    certificates: [coreDataCert, leBienLeJusteCert],
    publications: [medAndSciencePub],
    skills: [foundationalSkill, iosDev, operations, digitalPublishing, intellectualProperty, business],
    languages: [english, french],
    interests: nil,
    references: nil,
    projects: [umSalaryPub, annArborArtCenter])

///MISSING IMAGE
let basics = Basics(
    id: UUID().uuidString,
    name: "David Malicke",
    label: nil,
    image: "https://picsum.photos/1024/601",
    email: "davemalicke@gmail.com",
    phone: "734-231-6980",
    url: "https://www.linkedin.com/in/david-malicke-ios/",
    summary: "Experienced iOS Developer, Operations Lead, and Project Manager.",
    location: location,
    profiles: [gitHub],
    video: nil)

let location = Location(
    id: UUID().uuidString,
    address: "1715 South BLVD",
    postalCode: "48104",
    city: "Ann Arbor",
    countryCode: "USA",
    region: "MI")

let gitHub = Profile(
    id: UUID().uuidString,
    network: nil,
    username: "sans-connaissance",
    url: "https://cdn-icons-png.flaticon.com/512/25/25231.png",
    thumbnail: nil)

///MISSING URL
let frankfurtIndustries = Work(
    id: UUID().uuidString,
    name: "Frankfurt Industries",
    department: "Mobile Development",
    position: "iOS Mobile Developer",
    url: nil,
    startDate: "2021-02-01",
    endDate: "Present",
    summary: "Design, develop, and publish iOS apps for Frankfurt Industries, LLC.",
    highlights: ["Design, develop and publish UM SalaryPub on the App Store.", "UM SalaryPub is a native iOS app for searching, reviewing and comparing over 470,000 unique salary records.", "Built UM SalaryPub with SwiftUI following MVVM, and designed the CoreData model from the ground up. UM SalaryPub also takes advantage of an imported UIKit Charts package, which combined with SwiftUI and CoreData delivers a fast and responsive user experience."],
    thumbnail: "https://frankfurtindustries.neocities.org/images/bg.jpg")

let umCAIOperationsLead = Work(
    id: UUID().uuidString,
    name: "University of Michigan, Office of the Provost",
    department: "Center for Academic Innovation",
    position: "Operations Lead",
    url: "https://ai.umich.edu",
    startDate: "2017-02-01",
    endDate: "Present",
    summary: "Work closely with CAI teams to develop and refine the Center's technical and process infrastructure.",
    highlights: ["Areas of focus include internal communications, optimizing internal and external collaboration processes, and the development and maintenance of a variety of information processes.",
                  "Improve project reporting and transparency by co-developing project management bandwidth boards.",
                 "Lead development of the Center's use of Salesforce to manage data associated with the Center's portfolio of projects.",
                 "Manage ingest of project portfolio data into Salesforce, and support the creation of key reports and insights",
                 "Operationalize cross-team processes for keeping Salesforce up-to-date",
                 "Built and launched new intranet to serve as the Center’s internal platform for policies, guidelines, and HR resources",
                 "Co-developed copyright clearance process.",
                  "Manage special projects including the design, acquisition, and deployment of Center-wide video conferencing systems, creating a new finance and accounting system, and introducing the use of Slack and Trello across teams and projects.",
                 "Manage full-time staff; Co-develop new full-time and part-time positions",
                 "Provide key resources and mentorship to team members that are developing new processes and areas of expertise."],
    thumbnail: "https://frankfurtindustries.neocities.org/images/bg.jpg")


let masterDegree = Education(
    id: UUID().uuidString,
    institution: "University of Michigan School of Information",
    studyType: "Master of Science in Information",
    area: "Archives and Records Management",
    url: "https://www.si.umich.edu",
    location: "Ann Arbor, MI",
    startDate: "2009-01-03",
    endDate: "2011-04-15",
    score: "3.7",
    courses: ["SI 500: Information in social systems: Collections, flows, and processing",
              "SI 501: Contextual Inquiry and Consulting Foundations",
              "SI 502: Networked Computing: Storage, Communication, and Processing",
              "SI 510: Data Security and Privacy: Legal, Policy and Enterprise Issues",
              "SI 543: Introductory Programming",
              "SI 572: Database Application Design",
              "SI 580: Understanding Records and Archives",
              "SI 622: Needs Assessment and Usability Evaluation",
              "SI 631: Content Management Systems",
              "SI 632: Appraisal and Collection Development",
              "SI 634: Content Management Systems Configuration and Site Building",
             "SI 626: Management of Libraries and Information Services",
              "SI 639: Web Archiving",
              "SI 655: Management of Electronic Records",
             "COMM 776: Media Theory Seminar in the Social Science Traditions"],
    educationType: "formal", // ENUM?
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et pulvinar justo. Fusce nibh justo, lacinia ac congue a, ultricies ut tortor. Donec commodo leo a sagittis fermentum. Quisque varius euismod urna, in euismod magna mollis a. Phasellus hendrerit ultricies consequat. Integer gravida ornare arcu vitae varius. Ut dapibus tortor et vehicula condimentum. Donec iaculis massa quis maximus viverra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat quam, consectetur eget magna at, consectetur sollicitudin tellus",
    thumbnail: "https://www.med.umich.edu/ott/mm/images/block-m-feed.jpg")

let bachelorDegree = Education(
    id: UUID().uuidString,
    institution: "Siena Heights University",
    studyType: "Bachelor of Business Administration",
    area: "Marketing",
    url: "https://www.sienaheights.edu",
    location: "Ann Arbor, MI",
    startDate: "2005-01-08",
    endDate: "2007-12-15",
    score: "3.6",
    courses:  ["MAT 143: Introduction to Statistics",
               "ACC 203: Principles of Accounting I",
               "ECO 221: Microeconomics",
               "ECO 222: Macroeconomics",
               "ACC 240: Principles of Accounting II",
               "GEN 301: The Adult Learner",
               "MGT 302: Management Principles and Case",
               "MKT 310: Marketing Principles and Cases",
               "PHI 329: Technology and the Human Condition",
              "FIN 340: Managerial Finance",
               "MKT 351: Advertising and Promotion",
               "MGT 361: Organizational Behavior",
               "LAS 401: Senior Seminar",
               "MGT 440: Small Business Management",
               "BAM 441: Communication Skills for Managers",
               "MGT 452: Leadership",
               "MKt 455: Contemporary Sales Management",
              "BAM 479: Strategic Management",
              "MKT 485: Special Topics: Professional Selling and Marketing"],
    educationType: "formal",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et pulvinar justo. Fusce nibh justo, lacinia ac congue a, ultricies ut tortor. Donec commodo leo a sagittis fermentum. Quisque varius euismod urna, in euismod magna mollis a. Phasellus hendrerit ultricies consequat. Integer gravida ornare arcu vitae varius. Ut dapibus tortor et vehicula condimentum. Donec iaculis massa quis maximus viverra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat quam, consectetur eget magna at, consectetur sollicitudin tellus",
    thumbnail: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Siena_Heights_University_Campus.JPG/640px-Siena_Heights_University_Campus.JPG")

let associateDegree = Education(
    id: UUID().uuidString,
    institution: "Macomb Community College",
    studyType: "Associate of Media and Communications Arts",
    area: "Digital Art and Animation",
    url: "https://www.macomb.edu",
    location: "Macomb, MI",
    startDate: "2001-08-22",
    endDate: "2004-12-15",
    score: "3.4",
    courses: ["GCA 101: perspective and Parallel Lines",
             "GCA 102: Design I",
              "GCA 104: Illustration Fundamentals",
              "ENVS 105: Environmental Science",
             "GCA 106: Photography I",
              "MCA 107: Rendering I",
              "MCA 109: Figure Illustration",
              "MCA 115: Storyboarding",
              "MCA 120: Digital Illustration",
             "ENG 121: Composition I",
              "MCA 130: Digital Color",
              "HIST 140: History Goes to the Movies",
              "PRT 145: Digital Layout and Composition",
              "HUMN 146: The Film as Art",
              "MACA 172: Web Page Design: Macromedia",
              "PHED 201: Wellness - Focus on Nutrition",
              "PHI 201: Introduction to Philosophy",
             "MCA 220: Digital Editing",
              "MCA 230: Advanced Photoshop",
              "MCA 250: Introduction to 3D Animation",
              "MACA 260: Advanced 3D Animation",
              "MACA 265: 3D Shorts & Animatics"],
    educationType: "formal",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et pulvinar justo. Fusce nibh justo, lacinia ac congue a, ultricies ut tortor. Donec commodo leo a sagittis fermentum. Quisque varius euismod urna, in euismod magna mollis a. Phasellus hendrerit ultricies consequat. Integer gravida ornare arcu vitae varius. Ut dapibus tortor et vehicula condimentum. Donec iaculis massa quis maximus viverra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat quam, consectetur eget magna at, consectetur sollicitudin tellus",
    thumbnail: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/MacombcommunitycollegeMIUSA.jpg/640px-MacombcommunitycollegeMIUSA.jpg")

let hackingWithSwift = Education(
    id: UUID().uuidString,
    institution: "Hacking with Swift",
    url: "https://www.hackingwithswift.com",
    startDate: nil,
    endDate: nil,
    score: nil,
    courses: ["100 Days of Swift"],
    educationType: "self-paced learning",
    thumbnail: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/MacombcommunitycollegeMIUSA.jpg/640px-MacombcommunitycollegeMIUSA.jpg")

let coreDataCert = Certificate(
    id: UUID().uuidString,
    name: "Core Data in iOS",
    date: "2022-01-01",
    issuer: "udemy",
    url: "https://www.udemy.com/certificate/UC-c0dd6fe0-1aa5-4e2d-90a9-466f5d1d729f/",
    thumbnail: "https://picsum.photos/200/303")

let leBienLeJusteCert = Certificate(
    id: UUID().uuidString,
    name: "Le Bien, le Juste, l'Utile. Introduction aux éthiques philosophiques",
    date: "2020-02-23",
    issuer: "Université de Genève",
    url: "https://www.coursera.org/account/accomplishments/verify/A75THDC4VZ74",
    thumbnail: "https://picsum.photos/200/35")

let medAndSciencePub = Publication(
    id: UUID().uuidString,
    name: "Medical and Scientific Publishing: Author, Editor, and Reviewer Perspectives",
    publisher: "Elsevier",
    releaseDate: "2017-11-10",
    url: "https://www.elsevier.com/books/medical-and-scientific-publishing/markovac/978-0-12-809969-8",
    summary: "Chapter 2: Open Access Journal Publishing",
    thumbnail: "https://secure-ecsd.elsevier.com/covers/80/Tango2/large/9780128099698.jpg")

let foundationalSkill = Skill(
    id: UUID().uuidString,
    name: "Foundational Skills",
    level: "Professional",
    keywords: ["Growth Mindset", "Learner", "Curious", "Critical", "Committement", "Emotional Intelligence"])

let iosDev = Skill(
    id: UUID().uuidString,
    name: "iOS Developer Skills",
    level: "Junior",
    keywords: ["Agile", "CoreData", "GIT", "MVVM", "Vapor", "StackOverflow", "Swift", "SwiftUI", "XCode"])

let operations = Skill(
    id: UUID().uuidString,
    name: "Operations Lead Skill",
    level: "Seasoned Professional",
    keywords: ["Project Management", "Change Management", "Continuous Improvement", "Business Analysis", "Process Analysis", "Communication"])

let digitalPublishing = Skill(
    id: UUID().uuidString,
    name: "Digital Publishing Skill",
    level: "Seasoned Professional",
    keywords: ["Editing", "Publishing", "Content Management Systems", "Drupal", "WordPress", "Wiki", "Meta Data", "Self-Publishing", "Guidelines", "Publishing Contracts", "Licensing"])

let intellectualProperty = Skill(
    id: UUID().uuidString,
    name: "Intellectual Property Skill",
    level: "Professional",
    keywords: ["Copyright", "Fair Use", "Creative Commons Licensing", "Clearance", "WordPress", "Wiki", "Trademark"])

let business = Skill(
    id: UUID().uuidString,
    name: "Business Skill",
    level: "Professional",
    keywords: ["Accounting", "Memorandum of Understanding", "", "Clearance", "WordPress", "Wiki", "Trademark"])

let english = Language(
    id: UUID().uuidString,
    language: "English",
    fluency: "Native")

let french = Language(
    id: UUID().uuidString,
    language: "French",
    fluency: "B1")

let umSalaryPub = Project(
    id: UUID().uuidString,
    name: "UM SalaryPub",
    description: "UM SalaryPub is a native iOS app for searching, reviewing and comparing over 470,000 unique salary records.",
    highlights: ["List of a bunch of things about the project", "Another list of things"],
    keywords: ["iOS, SwiftUI, CoreData, UIKit"],
    startDate: "2020-11-01",
    endDate: "2021-04-01",
    url: "https://apps.apple.com/us/app/um-salarypub/id1564602975",
    roles: ["Lead iOS Developer", "UX Designer", "Publisher"],
    entity: "Frankfurt Industries",
    type: "App", // probably needs to be an enum
    thumbnail: "https://picsum.photos/200/301",
    thumbnails: ["https://picsum.photos/200/301", "https://picsum.photos/200/302", "https://picsum.photos/200/303"],
    videos: nil)

let annArborArtCenter = Project(
    id: UUID().uuidString,
    name: "Ann Arbor Art Center",
    description: "Contextual Inquiry to determine internal communication issues.",
    highlights: ["List of a bunch of things about the project", "Another list of things"],
    keywords: ["Consultation", "Process", "Contextual Inquiry"],
    startDate: "2020-11-01",
    endDate: "2021-04-01",
    url: "https://apps.apple.com/us/app/um-salarypub/id1564602975",
    roles: ["Lead iOS Developer", "UX Designer", "Publisher"],
    entity: "Master Degree",
    type: "Student Project", // probably needs to be an enum
    thumbnail: "https://www.mlive.com/resizer/tl5HqUHf3rcnt_ijY5avRjYEohk=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/NR7AIFZ6EJEFDBK65FWP6KQ2RA.jpg",
    thumbnails: ["https://picsum.photos/200/301", "https://picsum.photos/200/302", "https://picsum.photos/200/303"],
    videos: nil)
