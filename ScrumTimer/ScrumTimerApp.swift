//
//  ScrumTimerApp.swift
//  ScrumTimer
//
//  Created by Tarik Nasuhoglu on 11.08.2022.
//

import SwiftUI

@main
struct ScrumTimerApp: App {
   
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums) {
                    Task {
                        do {
                            try await ScrumStore.save(scrums: store.scrums)
                        } catch {
                            fatalError("Error saving scrums.")
                        }
                    }
                }
            }
            .task {
                do {
                    store.scrums = try await ScrumStore.load()
                } catch {
                    fatalError("Error loading scrums.")
                }
            }
        }
    }
}
