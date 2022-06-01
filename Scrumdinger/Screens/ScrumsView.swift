//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Lubshad P on 29/05/22.
//

import SwiftUI

struct ScrumsView: View {
    
    @Binding var scrums:[DailyScrum]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(scrums) { scrum in
                    NavigationLink(destination: ScrumDetailView(scrum : scrum)) {
                        CardView(scrum: scrum)
                    }
                    .listRowBackground(scrum.theme.mainColor)
                }
            }
            .navigationTitle("Scrums")
            .toolbar {
                Button(action:{}) {
                    Image(systemName: "plus")
                }.accessibilityLabel("New session")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
