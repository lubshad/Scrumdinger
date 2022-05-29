//
//  ScrumDetailView.swift
//  Scrumdinger
//
//  Created by Lubshad P on 29/05/22.
//

import SwiftUI

struct ScrumDetailView: View {
    let scrum : DailyScrum
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Meeting info")) {
                    NavigationLink(destination: MeetingView()) {
                        Label("Start meeting" , systemImage: "timer")
                    }
                    HStack {
                        Label("Length" , systemImage: "clock")
                        Spacer()
                        Text("\(scrum.lengthInMinutes)")
                    }
                    HStack {
                        Label("Theme" , systemImage: "paintpalette")
                        Spacer()
                        Text(scrum.theme.name
                        )
                        .padding(.horizontal)
                        .background(scrum.theme
                            .mainColor)
                    }
                }
                Section(header: Text("Attendees")) {
                    ForEach(scrum.attendees) {attendee in
                        Label(attendee.name , systemImage: "person")
                    }
                    
                }
            }
            .navigationTitle(scrum.title)
        }
    }
}

struct ScrumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumDetailView(scrum : DailyScrum.sampleData[1])
    }
}
