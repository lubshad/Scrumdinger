//
//  CardView.swift
//  Scrumdinger
//
//  Created by Lubshad P on 29/05/22.
//

import SwiftUI

struct CardView: View {
    let scrum : DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text("Design").font(.headline).accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minutes")
            }.font(.caption)
        }
        .padding()
        .background(scrum.theme.mainColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(scrum: DailyScrum.sampleData[0]).previewLayout(.fixed(width: 400, height: 60))
    }
}
