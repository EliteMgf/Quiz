//
//  ViewController.swift
//  Quiz
//
//  Created by John Forester on 1/23/19.
//  Copyright © 2019 John Forester. All rights reserved.
//  High Point University

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
  
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "What college has the best college basketball program?",
        "Who are the star players for Duke Men's Basketball?",
        "Who is the all time point leader for Duke Men's Basketball?",
        "What is Duke's mascot?",
        "How many NCAA Championships does Duke Have?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes",
        "Duke",
        "Zion Williamson and RJ Barrett",
        "J.J. Redick",
        "The Blue Devils",
        "Five"
        
    ]
    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

    

}

