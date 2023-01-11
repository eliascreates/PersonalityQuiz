//
//  Answer.swift
//  PersonalityQuiz
//
//  Created by IACD 013 on 2023/01/10.
//

import Foundation

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: String {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms"
        case .rabbit:
            return "You love everything that’s soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
        
    }
    
}
