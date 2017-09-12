//
//  ViewController.swift
//  QuiziOS
//
//  Created by Ganeshshetty on 12/09/17.
//  Copyright © 2017 Ganeshshetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionText : UILabel!
    @IBOutlet var answerText : UILabel!
    
    let questions : [String] = [
        "What is 7+7 ?",
        "What is the capital of vermont?",
        "What is cognac made from?"
    ]
    
    let answers : [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionText.text = questions [currentQuestionIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showNextQuestion(_ sender : UIButton) {
        currentQuestionIndex+=1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions [currentQuestionIndex]
        questionText.text = question
        answerText.text = "???"
    }
    
    @IBAction func showAnswer (_ sender : UIButton) {
        let answer: String = answers [currentQuestionIndex]
        answerText.text = answer
    }
}

