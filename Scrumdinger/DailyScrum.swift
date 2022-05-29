//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Lubshad P on 29/05/22.
//

import Foundation

struct DailyScrum:Identifiable {
    var id: UUID
    var title: String
    var attendees : [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id : UUID = UUID() , title: String, attendees: [String] , lengthInMinutes: Int, theme: Theme){
        self.id = id
        self.title = title
        self.attendees = attendees.map{Attendee(name: $0)}
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
    
    
    
}


extension DailyScrum {
    static let sampleData: [DailyScrum] =
        [
            DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .blue),
            DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .green),
            DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .red)
        ]
    
    struct Attendee  : Identifiable {
        var id : UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    
    struct Data{
        var title: String = ""
        var attendee: [Attendee] = []
        var lengthInMinutes : Double = 5
        var theme: Theme = Theme.red
    }
    
    var data : Data {
        Data(
            title: title,
            attendee: attendees,
            lengthInMinutes: Double(lengthInMinutes),
            theme: theme
        )
    }
    
    
    
}
