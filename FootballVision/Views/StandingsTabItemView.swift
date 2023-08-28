//
//  StandingsTabItemView.swift
//  FootballVision
//
//  Created by Aryan Jagarwal on 28/08/23.
//

import SwiftUI
import XCAFootballDataClient

struct StandingsTabItemView: View {
    
    @State var selectorCompetition: Competition?
    
    var body: some View {
        NavigationSplitView {
            List(Competition.defaultCompetitions, id: \.self, selection: $selectorCompetition) {
                Text($0.name)
            }.navigationTitle("Football Standings")
        } detail: {
            if let selectorCompetition {
                StandingsTableView(competition: selectorCompetition)
                    .id(selectorCompetition)
            } else {
                Text("Select a competition")
            }
        }
    }
}

#Preview {
    StandingsTabItemView()
}
