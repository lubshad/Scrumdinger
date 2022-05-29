//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Lubshad P on 29/05/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
