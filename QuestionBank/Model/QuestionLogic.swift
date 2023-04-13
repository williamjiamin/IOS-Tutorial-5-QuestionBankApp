//
//  FlashcardsLogic.swift
//  QuestionBank
//
//  Created by william on 2023/3/7.
//

import Foundation

struct QuestionLogic {
    let questions = [
        Questions(q: "CFA is a what test", a: ["Math Test","Finance Test","Art Test"],cAns: "Finance Test"),
        Questions(q: "William Jiamin's occupation is what?", a: ["Math Teacher","Finance Teacher","Art Theacher"],cAns: "Art Theacher"),
        Questions(q: "This tutorial is about what", a: ["Math","Finance","Art"],cAns: "Art"),
        Questions(q: "This tutorial is about what", a: ["Math","Finance","Art"],cAns: "Art"),
        Questions(q: "This tutorial is about what", a: ["Math","Finance","Art"],cAns: "Art"),
        Questions(q: "This tutorial is about what", a: ["Math","Finance","Art"],cAns: "Art"),
        Questions(q: "This tutorial is about what", a: ["Math","Finance","Art"],cAns: "Art"),
        Questions(q: "This tutorial is about what", a: ["Math","Finance","Art"],cAns: "Art"),
        Questions(q: "This tutorial is about what", a: ["Math","Finance","Art"],cAns: "Art"),
        Questions(q: "This tutorial is about what", a: ["Math","Finance","Art"],cAns: "Art"),
        Questions(q: "This tutorial is about what", a: ["Math","Finance","Art"],cAns: "Art"),
        Questions(q: "This tutorial is about what", a: ["Math","Finance","Art"],cAns: "Art"),
        Questions(q: "This tutorial is about what", a: ["Math","Finance","Art"],cAns: "Art"),
    ]
    var questionNum = 0
    var correctCount = 0
    
    mutating func checkAns(_ clientAnswer: String) -> Bool {
        if clientAnswer == questions[questionNum].correctAnswer {
            correctCount += 1
            return true
        }else{
            return false
        }
    }
    
    func getCorrectCount() -> Int {
        return correctCount
    }
    
    func getQuestionText() -> String {
        return questions[questionNum].question
    }
    
    func getAnswerText() -> [String] {
        return questions[questionNum].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNum + 1 )/Float(questions.count)
    }
    
    
    mutating func nextQuestion(){
        if questionNum < questions.count - 1 {
            questionNum += 1
            
        } else {
            questionNum = 0
            correctCount = 0
        }
    }
    
}
