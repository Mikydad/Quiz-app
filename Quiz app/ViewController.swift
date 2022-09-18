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
        Question(q: "2 + 2 is 4", a: "True"),
        Question(q: "2 + 3 is 5", a: "True"),
        Question(q: "2 + 4 is 8", a: "False"),
        Question(q: "2 + 5 is 7", a: "True"),
        Question(q: "2 + 6 is 8", a: "True"),
        Question(q: "2 + 7 is 4", a: "False"),
        Question(q: "2 + 8 is 10", a: "True")
    ]
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }

    @IBAction func anserButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.titleLabel?.text
        let actualAnswer = question[questionNumber].answer
        print(actualAnswer)
        if userAnswer == actualAnswer{
            sender.backgroundColor = UIColor.green
            print("right")
        }
        else{
            sender.backgroundColor = UIColor.red
            print("wrong")
        }
        if questionNumber + 1 < question.count {
            questionNumber += 1
        }else{
            questionNumber = 0
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI () {
        questionLabel.text = question[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(question.count)
    }
}

