//
//  ScrumDetailView.swift
//  Scrumdinger
//
//  Created by Lubshad P on 29/05/22.
//

import SwiftUI

struct ScrumDetailView: View {
    @Binding var scrum : DailyScrum
    @State var showEditSheet:Bool = false
    var body: some View {
        List {
            Section(header: Text("Meeting info")) {
                NavigationLink(destination: MeetingView(scrum: $scrum)) {
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
        .toolbar {
            Button(action: {
                showEditSheet = true
            }){
                Text("Edit")
            }
        }
        .sheet(isPresented: $showEditSheet){
            NavigationView {
                
                ScrumDetailEditView()
                    .navigationTitle(scrum.title)
                    .toolbar{
                        ToolbarItem(placement: .cancellationAction) {
                            Button(action: {
                                showEditSheet = false
                            }){
                                Text("Cancel")
                                
                            }
                        }
                        ToolbarItem(placement:.confirmationAction) {
                            Button(action: {
                                showEditSheet = false
                            }) {
                                Text("Done")
                            }
                        }
                    }
            }
        }
    }
}

struct ScrumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumDetailView(scrum :.constant(  DailyScrum.sampleData[0]))
    }
}
