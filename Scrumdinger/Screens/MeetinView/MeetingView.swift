//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Lubshad P on 29/05/22.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum : DailyScrum
    
    @StateObject var scrumTimer = ScrumTimer()
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16).fill(scrum.theme.mainColor)
            VStack{
                MeetingHeaderView(secondsElapsed: scrumTimer.secondsElapsed, secondsRemaining: scrumTimer.secondsRemaining)
                Circle().stroke(lineWidth: 20)
                HStack {
                    Text("Speaker 1 of 3")
                    Spacer()
                    Button(action : {}) {
                        Image(systemName: "forward.fill")
                    }
                }
                
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
        }.onAppear {
            scrumTimer.resetTimer(lenthInMinutes: scrum.lengthInMinutes, attendees: scrum.attendees)
            scrumTimer.startScrum()
        }
        .onDisappear {
            scrumTimer.stopScrum()
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}
