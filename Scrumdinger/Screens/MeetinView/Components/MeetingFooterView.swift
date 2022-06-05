//
//  MeetingFooterView.swift
//  Scrumdinger
//
//  Created by Lubshad P on 05/06/22.
//

import SwiftUI

struct MeetingFooterView: View {
    let speakers : [Speaker]
    let skipAction: () -> Void
    
    var currentSpeaker : Speaker? {
        speakers.first(where: {$0.isCompleted == false})
    }
    
    
    var speakerText : String {
        currentSpeaker?.name ?? "Last Speaker"
    }
    
    var isLastSpeaker : Bool {
        speakers.dropLast().allSatisfy({$0.isCompleted})
    }
    
    
    var body: some View {
        HStack {
            if isLastSpeaker {
                Text(speakerText)
            }
            else {
                Text("Speaker : \(speakerText)")                
                Spacer()
                Button(action : skipAction) {
                    Image(systemName: "forward.fill")
                }
            }
        }
    }
}

struct MeetingFooterView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingFooterView(speakers: [], skipAction: {}).previewLayout(.sizeThatFits)
    }
}
