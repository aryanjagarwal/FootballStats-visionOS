//
//  TopScorersTableView.swift
//  FootballVision
//
//  Created by Aryan Jagarwal on 28/08/23.
//

import SwiftUI
import XCAFootballDataClient

struct TopScorersTableView: View {
    
    let competition: Competition
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    NavigationStack {
        TopScorersTableView(competition: .defaultCompetitions[1])
    }
}
