//
//  Flashcards.swift
//  QuestionBank
//
//  Created by william on 2023/2/13.
//

import Foundation

struct Questions {
    let question: String
    let answers: [String]
    let correctAnswer: String
    
    
    init(q: String, a: [String], cAns:String) {
        question = q
        answers = a
        correctAnswer = cAns
    }
    
}
