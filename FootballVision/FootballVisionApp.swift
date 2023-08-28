//
//  FootballVisionApp.swift
//  FootballVision
//
//  Created by Aryan Jagarwal on 27/07/23.
//

import SwiftUI

let apiKey = "9f5fa96e28a84ba88ae4ca1d5dca6b50" // PUT_YOUR_API_KEY_HERE

@main
struct FootballVisionApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                StandingsTabItemView()
                    .tabItem { Label("Standings", systemImage: "table.fill") }
                
                Text("Top Scorer")
                    .tabItem { Label("Top Scores", systemImage: "soccerball.inverse") }
            }
        }
    }
}
