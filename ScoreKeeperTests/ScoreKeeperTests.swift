//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by Mikihisa Saito on 2025/12/07.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {
	
	@Test("Reset player scores", arguments: [0,10,20])
	func resetScores(to newValue: Int) async throws {
		var scoreboard = Scoreboard(players:[
			Player(name: "Elisha", score: 0),
			Player(name: "Andre", score: 5),
		])
		await scoreboard.resetScores(to: newValue)
		
		for player in await scoreboard.players{
			#expect(player.score == newValue)
		}
	}
}
