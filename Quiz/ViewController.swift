//
//  ViewController.swift
//  Quiz
//
//  Created by student on 2016-01-15.
//  Copyright © 2016 Ben Ross. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions:[String] = ["From what is cognac made?",
                            "What is 7x7", "What is the capital of Vermont"]
    let answers:[String] = ["Grapes", "49", "Montpelier"]
    
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBAction func nextQuestionClicked(sender: AnyObject) {
    ++currentQuestionIndex
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0;
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        

    }
    
    @IBAction func showAnswerClicked(sender: AnyObject) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
        
    }
    
}
