//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by Lubshad P on 02/06/22.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed  : Int
    let secondsRemaining : Int
    
    
    var totalSeconds : Int {
        secondsElapsed + secondsRemaining
    }
    
    
    var progress : Double {
        Double(secondsElapsed) / Double(totalSeconds)
    }
    
    var minutesRemaining: Double {
        Double(secondsRemaining)/Double(60)
    }
    
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .progressViewStyle(ScrumProgressView(theme: Theme.red))
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed").font(.caption)
                    
                    Label("\(secondsElapsed)" , systemImage:  "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining").font(.caption)
                    
                    Label("\(secondsRemaining)" , systemImage:  "hourglass.tophalf.fill")
                }
            }.accessibilityElement(children: .ignore)
                .accessibilityLabel("Time remaining")
                .accessibilityValue("\(minutesRemaining) minutes")
        }
    }
}

struct MeetingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingHeaderView(secondsElapsed: 100, secondsRemaining: 200).previewLayout(.sizeThatFits)
    }
}
