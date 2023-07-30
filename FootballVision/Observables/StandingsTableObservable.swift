//
//  StandingsTableObservable.swift
//  FootballVision
//
//  Created by Aryan Jagarwal on 27/07/23.
//

import Foundation
import Observation
import XCAFootballDataClient

@Observable
class StandingsTableObservable {
    
    let client = FootballDataClient(apiKey: apiKey)
    
    var fetchPhase = FetchPhase<[TeamStandingTable]>.initial
    var standings: [TeamStandingTable]? { fetchPhase.value }
    
    func fetchStandings(competition: Competition) async {
//        fetchPhase = .fetching
//        do {
//            let standings = try await client.fetchStandings(competitionId: competition.id)
//            if Task.isCancelled { return }
//            fetchPhase = .success(standings)
//        } catch {
//            if Task.isCancelled { return }
//            fetchPhase = .failure(error)
//        }
        fetchPhase = .success(TeamStandingTable.stubs)
    }
}

extension TeamStandingTable {
    
    static var stubs: [TeamStandingTable] {
        let url = Bundle.main.url(forResource: "standings", withExtension: "json")!
        let standingsResponse: StandingResponse = Utilities.loadStub(url: url)
        return standingsResponse.standings!.first { $0.type == "TOTAL" }!.table
    }
}
