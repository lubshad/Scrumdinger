//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Lubshad P on 29/05/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State var scrums : [DailyScrum] = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
