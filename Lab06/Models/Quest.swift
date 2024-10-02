//
//  Quest.swift
//  Lab06
//
//  Created by Joel Ward on 10/1/24.
//

import Foundation

struct Quest {
    private(set) var description: String
    private(set) var reward: Int
    private(set) var questType: QuestType
    var stepsRemaining: Int
    
    init(description: String, questType: QuestType)
    {
        self.description = description
        self.questType = questType
        self.stepsRemaining = questType.totalSteps
        self.reward = Int(Double(questType.reward) * questType.difficultyMultiplier())
    }
    
    mutating func completeStep() {
        if (self.stepsRemaining > 0) 
        {
            self.stepsRemaining -= 1
        }
    }
}
