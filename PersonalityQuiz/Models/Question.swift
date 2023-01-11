//
//  Question.swift
//  PersonalityQuiz
//
//  Created by IACD 013 on 2023/01/10.
//

import Foundation


struct Question {
    
    var text: String
    var type: ResponseType
    var answers : [Answer]
}


enum ResponseType {
    case single, multiple, ranged
}
