//
//  ScrumTimerApp.swift
//  ScrumTimer
//
//  Created by Tarik Nasuhoglu on 11.08.2022.
//

import SwiftUI

@main
struct ScrumTimerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
