//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Lubshad P on 29/05/22.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack{
            ProgressView(value: 5, total: 10)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed").font(.caption)
                    
                    Label("200" , systemImage:  "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining").font(.caption)
                    
                    Label("200" , systemImage:  "hourglass.tophalf.fill")
                }
            }.accessibilityElement(children: .ignore)
                .accessibilityLabel("Time remaining")
                .accessibilityValue("10 minutes")
            Circle().stroke(lineWidth: 20)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action : {}) {
                    Image(systemName: "forward.fill")
                }
            }
            
        }.padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
