//
//  ViewController.swift
//  QuestionBank
//
//  Created by william on 2023/1/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var AnswerReveal: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choiceA: UIButton!
    @IBOutlet weak var choiceB: UIButton!
    @IBOutlet weak var choiceC: UIButton!
    var questionLogic = QuestionLogic()
    
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()

        
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let clientAnswer = sender.currentTitle!
        let clientAnsRightorWrong = questionLogic.checkAns(clientAnswer)
        
        
        
        if clientAnsRightorWrong {
//            print("Yeah , you got the right answer~")
            AnswerReveal.text = "True, You are right~"
            sender.backgroundColor = UIColor.green

        } else {
//            print("Sorry, you got the wrong answer~")
            AnswerReveal.text = "False, You are wrong~"
            sender.backgroundColor = UIColor.red
        }
        
        
        
        
        questionLogic.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateQuestion(){
        //        flashCardLabel.text = flashCards[flashCardNum].flashcard
        //        progressBar.progress = Float(flashCardNum + 1 )/Float(flashCards.count)
 
//        using the model to handle the logic
        questionLabel.text = questionLogic.getQuestionText()
        
        let ansChoices = questionLogic.getAnswerText()
        choiceA.setTitle(ansChoices[0], for: .normal)
        choiceB.setTitle(ansChoices[1], for: .normal)
        choiceC.setTitle(ansChoices[2], for: .normal)
        
        
        
        progressBar.progress = questionLogic.getProgress()
        countLabel.text = "You have got \(questionLogic.getCorrectCount()) correct answers."
        
//        set everhthing to default
        AnswerReveal.text = ""
        choiceA.backgroundColor = UIColor.gray
        choiceB.backgroundColor = UIColor.gray
        choiceC.backgroundColor = UIColor.gray

        
        
    }
    
    

}

