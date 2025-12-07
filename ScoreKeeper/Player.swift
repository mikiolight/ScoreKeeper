//
//  Player.swift
//  ScoreKeeper
//
//  Created by Mikihisa Saito on 2025/12/02.
//

import Foundation

struct Player : Identifiable {
	let id = UUID()
	
	var name: String
	var score: Int
}
