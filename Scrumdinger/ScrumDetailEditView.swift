//
//  ScrumDetailEditView.swift
//  Scrumdinger
//
//  Created by Lubshad P on 29/05/22.
//

import SwiftUI

struct ScrumDetailEditView: View {
    @State var data : DailyScrum.Data = DailyScrum.Data()
    @State var newAttendee : String = ""
    var body: some View {
        Form {
            Section(header: Text("Meeting info")) {
                TextField("Title" , text: $data.title)
                HStack {
                    Slider(value: $data.lengthInMinutes , in : 5...25, step: 1){
                        Text("Duration")
                    }
                    Spacer()
                    Text("\(Int(data.lengthInMinutes)) minutes")
                }
            }
            Section(header: Text("Attendees")) {
                HStack {
                    TextField("New Attendee" , text: $newAttendee)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendee)
                            data.attendee.append(attendee)
                            newAttendee = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(newAttendee.isEmpty)
                }
                ForEach(data.attendee) {attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
    }
}

struct ScrumDetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumDetailEditView()
    }
}
