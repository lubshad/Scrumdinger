//
//  ScrumTimer.swift
//  Scrumdinger
//
//  Created by Lubshad P on 02/06/22.
//

import Foundation


class ScrumTimer : ObservableObject {
    @Published var secondsElapsed : Int = 0
    @Published var secondsRemaining : Int = 0
    
    var lengthInMinutes : Int = 0
    
    var speakers : [Speaker] = []
    
    
    
    
    func resetTimer(lenthInMinutes: Int , attendees: [DailyScrum.Attendee]) {
        self.lengthInMinutes = lenthInMinutes
        self.speakers = attendees.map{$0.speaker}
    }
    
    
    func startScrum(){
        
    }
    
    func stopScrum() {
        
    }
    
    func nextSpeaker() {
        
    }
    
    func changeSpeaker() {
        
    }
}
