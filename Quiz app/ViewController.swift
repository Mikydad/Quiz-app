//
//  ViewController.swift
//  Quiz app
//
//  Created by MAX on 18/09/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    @IBOutlet var progressBar: UIProgressView!
    var question = [
        ["2 + 2 is 4","True"],
        ["2 + 3 is 5", "True"],
        ["2 + 4 is 9", "False"],
        ["2 + 5 is 7", "True"],
        ["2 + 6 is 10", "False"]
    ]
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }

    @IBAction func anserButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.titleLabel?.text
        let actualAnswer = question[questionNumber][1]
        if userAnswer == actualAnswer{
            print("RIght answer")
        }
        else{
            print("wrong answer")
        }
        
        
        if questionNumber + 1 < question.count {
            questionNumber += 1
        }else{
            questionNumber = 0
        }
        updateUI()
    }
    
    func updateUI () {
        questionLabel.text = question[questionNumber][0]
    }
}

