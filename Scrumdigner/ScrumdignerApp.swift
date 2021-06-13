//
//  ScrumdignerApp.swift
//  Scrumdigner
//
//  Created by Marco Espinosa on 8/6/21.
//

import SwiftUI

@main
struct ScrumdignerApp: App {
    @ObservedObject private var scrums = ScrumData()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums.scrums) {
                    scrums.save()
                }
            }
            .onAppear {
                scrums.load()
            }
        }
    }
}
