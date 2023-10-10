//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Dio Tendean on 04/10/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Manado is a located north sulawesi", a: "True"),
        Question(q: "Claudio is a iOS Expert", a: "False"),
        Question(q: "Indonesia is a number one country cleaning", a: "False"),
        Question(q: "Claudio on the way iOS Developer", a: "True"),
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
