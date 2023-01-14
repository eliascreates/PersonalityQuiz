//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by IACD 013 on 2023/01/10.
//

import UIKit

class ResultsViewController: UIViewController {

    var responses: [Answer]
    
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculatePersonalityResults()

    }
    
    func calculatePersonalityResults() {
        
        let frequencyOfAnswers = responses.reduce(into: [:]) { partialResult, answer in
            
            partialResult[answer.type, default: 0] += 1
            
        }

        
        
        
        
    }
    
    
    
    
}
