//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by IACD 013 on 2023/01/10.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButton1: UIButton!
    @IBOutlet var singleButton2: UIButton!
    @IBOutlet var singleButton3: UIButton!
    @IBOutlet var singleButton4: UIButton!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multiLabel1: UILabel!
    @IBOutlet var multiLabel2: UILabel!
    @IBOutlet var multiLabel3: UILabel!
    @IBOutlet var multiLabel4: UILabel!
    
    @IBOutlet var rangedStackView: UIStackView!
    @IBOutlet var rangedLabel1: UILabel!
    @IBOutlet var rangedLabel2: UILabel!
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var questionProgressView: UIProgressView!
    
    var questionIndex = 0
    var questions: [Question] = [
        Question(
            text: "What food do you like the most?",
            type: .single,
            answers: [
                Answer(text: "Steak", type: .dog),
                Answer(text: "Fish", type: .cat),
                Answer(text: "Carrot", type: .rabbit),
                Answer(text: "Corn", type: .turtle),
            ]
        ),
        Question(
            text: "Which activities do you enjoy?",
            type: .multiple,
            answers: [
                Answer(text: "Eating", type: .dog),
                Answer(text: "Sleeping", type: .cat),
                Answer(text: "Cuddling", type: .rabbit),
                Answer(text: "Swimming", type: .turtle),
            ]
        ),
        Question(
            text: "How much do you enjoy car rides?",
            type: .ranged,
            answers: [
                Answer(text: "I love them", type: .dog),
                Answer(text: "I get a little nervous", type: .rabbit),
                Answer(text: "I barely notice them", type: .turtle),
                Answer(text: "I dislike them", type: .cat),
            ]
        )
    ]

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    func updateUI() {
        
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        
        
        let currentQuestion = questions[questionIndex]
        
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(Float((questionIndex)/questions.count), animated: true)
        
        
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(answer: currentQuestion.answers)
        case .multiple:
            updateMultipleStack(answer: currentQuestion.answers)
        case .ranged:
            updateRangedStack(answer: currentQuestion.answers)
        }

    }
    
    func updateSingleStack(answer: [Answer]) {
        singleStackView.isHidden = false
        singleButton1.setTitle(answer[0].text, for: .normal)
        singleButton2.setTitle(answer[1].text, for: .normal)
        singleButton3.setTitle(answer[2].text, for: .normal)
        singleButton4.setTitle(answer[3].text, for: .normal)
    }
    
    func updateMultipleStack(answer: [Answer]) {
        multipleStackView.isHidden = false
        multiLabel1.text = answer[0].text
        multiLabel2.text = answer[1].text
        multiLabel3.text = answer[2].text
        multiLabel4.text = answer[3].text
    }
    
    func updateRangedStack(answer: [Answer]) {
        rangedStackView.isHidden = false
        rangedLabel1.text = answer.first?.text
        rangedLabel2.text = answer.last?.text
    }


}
