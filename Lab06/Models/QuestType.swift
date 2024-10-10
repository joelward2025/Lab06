//
//  QuestType.swift
//  Lab06
//
//  Created by Joel Ward on 10/1/24.
//

import Foundation

enum QuestType {
    case journey(location: String)
    case target(enemy: String)
    case explore(location: String)
    case treasure(size: Int)
    
    var reward: Int {
        switch self {
            case .journey(let value): return 100
            case .target(let value): return 100
            case .explore(let value): return 100
            case .treasure(let value): if (value <= 5) {return 50} else if (value <= 10) {return 100} else if (value <= 15) {return 150} else {return 0}
        }
    }
    
    var totalSteps: Int {
        switch self {
            case .journey(let value): if (value == "Local") {return 3} else {return 5}
            case .target(let value): return 4
            case .explore(let value): return 4
            case .treasure(let value): return 4
        }
    }
    
    func difficultyMultiplier() -> Double {
        switch self {
            case .journey(let value): return 1.0
            case .target(let value): return 1.1
            case .explore(let value): return 0.9
            case .treasure(let value): if (value < 5) {return 1.0} else {return 1.2}
        }
    }
}
