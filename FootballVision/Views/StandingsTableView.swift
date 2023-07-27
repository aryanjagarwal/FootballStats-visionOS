//
//  StandingsTableView.swift
//  FootballVision
//
//  Created by Aryan Jagarwal on 27/07/23.
//

import SwiftUI
import XCAFootballDataClient

struct StandingsTableView: View {
    
    let competition: Competition
    
    var body: some View {
        Text("Hello Aryan")
            .navigationTitle(competition.name)
    }
}

#Preview {
    NavigationStack {
        StandingsTableView(competition: .defaultCompetitions[1])
    }
}
